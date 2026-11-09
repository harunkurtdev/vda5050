// VDA 5050 v3.0.0 `order` message (fleet control -> mobile robot).
//
// Schema: json_schemas/order.schema

import 'common.dart';

class Order {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  String? orderId;
  int? orderUpdateId;
  String? orderDescription;
  List<Node>? nodes;
  List<Edge>? edges;

  Order({
    this.headerId,
    this.timestamp,
    this.version,
    this.manufacturer,
    this.serialNumber,
    this.orderId,
    this.orderUpdateId,
    this.orderDescription,
    this.nodes,
    this.edges,
  });

  Order.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    orderId = json['orderId'];
    orderUpdateId = json['orderUpdateId'];
    orderDescription = json['orderDescription'];
    nodes = asList(json['nodes'], Node.fromJson);
    edges = asList(json['edges'], Edge.fromJson);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'headerId': headerId,
      'timestamp': timestamp,
      'version': version,
      'manufacturer': manufacturer,
      'serialNumber': serialNumber,
      'orderId': orderId,
      'orderUpdateId': orderUpdateId,
    };
    if (orderDescription != null) data['orderDescription'] = orderDescription;
    if (nodes != null) data['nodes'] = nodes!.map((e) => e.toJson()).toList();
    if (edges != null) data['edges'] = edges!.map((e) => e.toJson()).toList();
    return data;
  }
}

class Node {
  String? nodeId;
  int? sequenceId;
  String? nodeDescriptor;
  bool? released;
  NodePosition? nodePosition;
  List<Action>? actions;

  Node({
    this.nodeId,
    this.sequenceId,
    this.nodeDescriptor,
    this.released,
    this.nodePosition,
    this.actions,
  });

  Node.fromJson(Map<String, dynamic> json) {
    nodeId = json['nodeId'];
    sequenceId = json['sequenceId'];
    nodeDescriptor = json['nodeDescriptor'];
    released = json['released'];
    nodePosition = json['nodePosition'] != null
        ? NodePosition.fromJson(json['nodePosition'])
        : null;
    actions = asList(json['actions'], Action.fromJson);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'nodeId': nodeId,
      'sequenceId': sequenceId,
      'released': released,
    };
    if (nodeDescriptor != null) data['nodeDescriptor'] = nodeDescriptor;
    if (nodePosition != null) data['nodePosition'] = nodePosition!.toJson();
    data['actions'] = (actions ?? const []).map((e) => e.toJson()).toList();
    return data;
  }
}

class Edge {
  String? edgeId;
  int? sequenceId;
  String? edgeDescriptor;
  bool? released;
  String? startNodeId;
  String? endNodeId;
  double? maximumSpeed;
  double? maximumMobileRobotHeight;
  double? minimumLoadHandlingDeviceHeight;
  double? orientation;

  /// GLOBAL (omni only) or TANGENTIAL (default).
  String? orientationType;
  String? direction;
  bool? reachOrientationBeforeEntering;
  double? maxRotationSpeed;
  Trajectory? trajectory;
  double? length;
  Corridor? corridor;
  List<Action>? actions;

  Edge({
    this.edgeId,
    this.sequenceId,
    this.edgeDescriptor,
    this.released,
    this.startNodeId,
    this.endNodeId,
    this.maximumSpeed,
    this.maximumMobileRobotHeight,
    this.minimumLoadHandlingDeviceHeight,
    this.orientation,
    this.orientationType,
    this.direction,
    this.reachOrientationBeforeEntering,
    this.maxRotationSpeed,
    this.trajectory,
    this.length,
    this.corridor,
    this.actions,
  });

  Edge.fromJson(Map<String, dynamic> json) {
    edgeId = json['edgeId'];
    sequenceId = json['sequenceId'];
    edgeDescriptor = json['edgeDescriptor'];
    released = json['released'];
    startNodeId = json['startNodeId'];
    endNodeId = json['endNodeId'];
    maximumSpeed = asDouble(json['maximumSpeed']);
    maximumMobileRobotHeight = asDouble(json['maximumMobileRobotHeight']);
    minimumLoadHandlingDeviceHeight =
        asDouble(json['minimumLoadHandlingDeviceHeight']);
    orientation = asDouble(json['orientation']);
    orientationType = json['orientationType'];
    direction = json['direction'];
    reachOrientationBeforeEntering = json['reachOrientationBeforeEntering'];
    maxRotationSpeed = asDouble(json['maxRotationSpeed']);
    trajectory = json['trajectory'] != null
        ? Trajectory.fromJson(json['trajectory'])
        : null;
    length = asDouble(json['length']);
    corridor =
        json['corridor'] != null ? Corridor.fromJson(json['corridor']) : null;
    actions = asList(json['actions'], Action.fromJson);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'edgeId': edgeId,
      'sequenceId': sequenceId,
      'released': released,
    };
    if (edgeDescriptor != null) data['edgeDescriptor'] = edgeDescriptor;
    if (startNodeId != null) data['startNodeId'] = startNodeId;
    if (endNodeId != null) data['endNodeId'] = endNodeId;
    if (maximumSpeed != null) data['maximumSpeed'] = maximumSpeed;
    if (maximumMobileRobotHeight != null) {
      data['maximumMobileRobotHeight'] = maximumMobileRobotHeight;
    }
    if (minimumLoadHandlingDeviceHeight != null) {
      data['minimumLoadHandlingDeviceHeight'] = minimumLoadHandlingDeviceHeight;
    }
    if (orientation != null) data['orientation'] = orientation;
    if (orientationType != null) data['orientationType'] = orientationType;
    if (direction != null) data['direction'] = direction;
    if (reachOrientationBeforeEntering != null) {
      data['reachOrientationBeforeEntering'] = reachOrientationBeforeEntering;
    }
    if (maxRotationSpeed != null) data['maxRotationSpeed'] = maxRotationSpeed;
    if (trajectory != null) data['trajectory'] = trajectory!.toJson();
    if (length != null) data['length'] = length;
    if (corridor != null) data['corridor'] = corridor!.toJson();
    data['actions'] = (actions ?? const []).map((e) => e.toJson()).toList();
    return data;
  }
}

class Corridor {
  double? leftWidth;
  double? rightWidth;

  /// KINEMATIC_CENTER (default) or CONTOUR.
  String? corridorReferencePoint;
  bool? releaseRequired;

  /// STOP or RETURN.
  String? releaseLossBehavior;

  Corridor({
    this.leftWidth,
    this.rightWidth,
    this.corridorReferencePoint,
    this.releaseRequired,
    this.releaseLossBehavior,
  });

  Corridor.fromJson(Map<String, dynamic> json) {
    leftWidth = asDouble(json['leftWidth']);
    rightWidth = asDouble(json['rightWidth']);
    corridorReferencePoint = json['corridorReferencePoint'];
    releaseRequired = json['releaseRequired'];
    releaseLossBehavior = json['releaseLossBehavior'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'leftWidth': leftWidth,
      'rightWidth': rightWidth,
    };
    if (corridorReferencePoint != null) {
      data['corridorReferencePoint'] = corridorReferencePoint;
    }
    if (releaseRequired != null) data['releaseRequired'] = releaseRequired;
    if (releaseLossBehavior != null) {
      data['releaseLossBehavior'] = releaseLossBehavior;
    }
    return data;
  }
}
