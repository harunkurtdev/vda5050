import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:vda5050/vda5050.dart';

Map<String, dynamic> _load(String name) =>
    jsonDecode(File('jsons/$name').readAsStringSync()) as Map<String, dynamic>;

void main() {
  group('order', () {
    test('parses v3.0.0 fields', () {
      final order = Order.fromJson(_load('order.json'));
      expect(order.version, '3.0.0');
      expect(order.nodes, hasLength(2));
      expect(order.edges!.first.maximumSpeed, 1.0);

      final pick = order.nodes!.last.actions!.first;
      expect(pick.actionType, 'pick');
      expect(pick.blockingType, 'HARD');
      expect(pick.retriable, isTrue);

      final dev = order.nodes!.first.nodePosition!.allowedDeviationXY!;
      expect(dev.a, 0.1);
    });

    test('round-trips through JSON', () {
      final src = _load('order.json');
      final again = Order.fromJson(src).toJson();
      expect(again['nodes'], hasLength(2));
      expect(again['edges'][0]['maximumSpeed'], 1.0);
    });
  });

  group('state', () {
    test('uses powerSupply and mobileRobotPosition', () {
      final state = State.fromJson(_load('state.json'));
      expect(state.powerSupply!.stateOfCharge, 87.5);
      expect(state.mobileRobotPosition!.localized, isTrue);
      expect(state.operatingMode, 'AUTOMATIC');
      expect(state.safetyState!.activeEmergencyStop, 'NONE');
    });
  });

  group('other messages parse', () {
    test('connection', () {
      expect(Connection.fromJson(_load('connection.json')).connectionState,
          'ONLINE');
    });
    test('instantActions', () {
      final ia = InstantActions.fromJson(_load('instant_actions.json'));
      expect(ia.actions, hasLength(2));
    });
    test('visualization', () {
      final v = Visualization.fromJson(_load('visualization.json'));
      expect(v.referenceStateHeaderId, 42);
    });
    test('factsheet', () {
      final f = Factsheet.fromJson(_load('factsheet.json'));
      expect(f.typeSpecification!.mobileRobotKinematics, 'DIFFERENTIAL');
      expect(f.protocolLimits!.timing!.minimumStateInterval, 1.0);
    });
    test('zoneSet', () {
      final z = ZoneSetMessage.fromJson(_load('zoneset.json'));
      expect(z.zoneSet!.zones!.first.zoneType, 'BLOCKED');
      expect(z.zoneSet!.zones!.first.vertices, hasLength(4));
    });
    test('responses', () {
      final r = Responses.fromJson(_load('responses.json'));
      expect(r.responses!.first.grantType, 'GRANTED');
    });
  });
}
