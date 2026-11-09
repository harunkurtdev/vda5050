import 'dart:convert';

import 'package:vda5050/vda5050.dart';

void main() {
  // Build an order programmatically and serialize it to VDA 5050 JSON.
  final order = Order(
    headerId: 1,
    timestamp: '2025-03-01T12:35:00.000Z',
    version: vda5050Version,
    manufacturer: 'ExampleRobotics',
    serialNumber: 'AGV-0001',
    orderId: 'order-0001',
    orderUpdateId: 0,
    nodes: [
      Node(
        nodeId: 'node-1',
        sequenceId: 0,
        released: true,
        nodePosition: NodePosition(x: 0, y: 0, theta: 0, mapId: 'shopfloor'),
        actions: [],
      ),
      Node(
        nodeId: 'node-2',
        sequenceId: 2,
        released: true,
        nodePosition: NodePosition(x: 5, y: 2, theta: 1.57, mapId: 'shopfloor'),
        actions: [
          Action(
            actionType: 'pick',
            actionId: 'a1b2c3',
            blockingType: 'HARD',
            actionParameters: [ActionParameter(key: 'loadType', value: 'EPAL')],
          ),
        ],
      ),
    ],
    edges: [
      Edge(edgeId: 'edge-1', sequenceId: 1, released: true, maximumSpeed: 1.0),
    ],
  );

  print(jsonEncode(order.toJson()));

  // Parse an incoming state message back into a typed model.
  const payload = '''
  {
    "headerId": 42,
    "timestamp": "2025-03-01T12:35:10.000Z",
    "version": "3.0.0",
    "manufacturer": "ExampleRobotics",
    "serialNumber": "AGV-0001",
    "orderId": "order-0001",
    "orderUpdateId": 0,
    "lastNodeId": "node-1",
    "lastNodeSequenceId": 0,
    "nodeStates": [],
    "edgeStates": [],
    "driving": true,
    "actionStates": [],
    "instantActionStates": [],
    "powerSupply": {"stateOfCharge": 87.5, "charging": false},
    "operatingMode": "AUTOMATIC",
    "errors": [],
    "safetyState": {"activeEmergencyStop": "NONE", "fieldViolation": false}
  }''';

  final state = State.fromJson(jsonDecode(payload) as Map<String, dynamic>);
  print('operatingMode: ${state.operatingMode}, '
      'battery: ${state.powerSupply?.stateOfCharge}%');
}
