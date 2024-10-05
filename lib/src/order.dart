// src/order.dart
class Order {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  String? orderId;
  int? orderUpdateId;
  List<Nodes>? nodes;
  List<Edges>? edges;
  String? zoneSetId;

  Order(
      {this.headerId,
      this.timestamp,
      this.version,
      this.manufacturer,
      this.serialNumber,
      this.orderId,
      this.orderUpdateId,
      this.nodes,
      this.edges,
      this.zoneSetId});

  Order.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    orderId = json['orderId'];
    orderUpdateId = json['orderUpdateId'];
    if (json['nodes'] != null) {
      nodes = <Nodes>[];
      json['nodes'].forEach((v) {
        nodes!.add(new Nodes.fromJson(v));
      });
    }
    if (json['edges'] != null) {
      edges = <Edges>[];
      json['edges'].forEach((v) {
        edges!.add(new Edges.fromJson(v));
      });
    }
    zoneSetId = json['zoneSetId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['headerId'] = this.headerId;
    data['timestamp'] = this.timestamp;
    data['version'] = this.version;
    data['manufacturer'] = this.manufacturer;
    data['serialNumber'] = this.serialNumber;
    data['orderId'] = this.orderId;
    data['orderUpdateId'] = this.orderUpdateId;
    if (this.nodes != null) {
      data['nodes'] = this.nodes!.map((v) => v.toJson()).toList();
    }
    if (this.edges != null) {
      data['edges'] = this.edges!.map((v) => v.toJson()).toList();
    }
    data['zoneSetId'] = this.zoneSetId;
    return data;
  }
}

class Nodes {
  String? nodeId;
  int? sequenceId;
  bool? released;
  List<Actions>? actions;
  String? nodeDescription;
  NodePosition? nodePosition;

  Nodes(
      {this.nodeId,
      this.sequenceId,
      this.released,
      this.actions,
      this.nodeDescription,
      this.nodePosition});

  Nodes.fromJson(Map<String, dynamic> json) {
    nodeId = json['nodeId'];
    sequenceId = json['sequenceId'];
    released = json['released'];
    if (json['actions'] != null) {
      actions = <Actions>[];
      json['actions'].forEach((v) {
        actions!.add(new Actions.fromJson(v));
      });
    }
    nodeDescription = json['nodeDescription'];
    nodePosition = json['nodePosition'] != null
        ? new NodePosition.fromJson(json['nodePosition'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nodeId'] = this.nodeId;
    data['sequenceId'] = this.sequenceId;
    data['released'] = this.released;
    if (this.actions != null) {
      data['actions'] = this.actions!.map((v) => v.toJson()).toList();
    }
    data['nodeDescription'] = this.nodeDescription;
    if (this.nodePosition != null) {
      data['nodePosition'] = this.nodePosition!.toJson();
    }
    return data;
  }
}

class Actions {
  String? actionId;
  String? actionType;
  String? blockingType;
  String? actionDescription;
  List<ActionParameters>? actionParameters;

  Actions(
      {this.actionId,
      this.actionType,
      this.blockingType,
      this.actionDescription,
      this.actionParameters});

  Actions.fromJson(Map<String, dynamic> json) {
    actionId = json['actionId'];
    actionType = json['actionType'];
    blockingType = json['blockingType'];
    actionDescription = json['actionDescription'];
    if (json['actionParameters'] != null) {
      actionParameters = <ActionParameters>[];
      json['actionParameters'].forEach((v) {
        actionParameters!.add(new ActionParameters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actionId'] = this.actionId;
    data['actionType'] = this.actionType;
    data['blockingType'] = this.blockingType;
    data['actionDescription'] = this.actionDescription;
    if (this.actionParameters != null) {
      data['actionParameters'] =
          this.actionParameters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ActionParameters {
  String? key;
  List<Null>? value;

  ActionParameters({this.key, this.value});

  ActionParameters.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    if (json['value'] != null) {
      value = <Null>[];
      json['value'].forEach((v) {
        value!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    if (this.value != null) {
      data['value'] = this.value!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NodePosition {
  int? x;
  int? y;
  String? mapId;
  double? theta;
  int? allowedDeviationXY;
  double? allowedDeviationTheta;
  String? mapDescription;

  NodePosition(
      {this.x,
      this.y,
      this.mapId,
      this.theta,
      this.allowedDeviationXY,
      this.allowedDeviationTheta,
      this.mapDescription});

  NodePosition.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
    mapId = json['mapId'];
    theta = json['theta'];
    allowedDeviationXY = json['allowedDeviationXY'];
    allowedDeviationTheta = json['allowedDeviationTheta'];
    mapDescription = json['mapDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    data['mapId'] = this.mapId;
    data['theta'] = this.theta;
    data['allowedDeviationXY'] = this.allowedDeviationXY;
    data['allowedDeviationTheta'] = this.allowedDeviationTheta;
    data['mapDescription'] = this.mapDescription;
    return data;
  }
}

class Edges {
  String? edgeId;
  int? sequenceId;
  bool? released;
  String? startNodeId;
  String? endNodeId;
  List<Actions>? actions;
  String? edgeDescription;
  int? maxSpeed;
  int? maxHeight;
  int? minHeight;
  double? orientation;
  String? orientationType;
  String? direction;
  bool? rotationAllowed;
  int? maxRotationSpeed;
  int? length;
  Trajectory? trajectory;
  Corridor? corridor;

  Edges(
      {this.edgeId,
      this.sequenceId,
      this.released,
      this.startNodeId,
      this.endNodeId,
      this.actions,
      this.edgeDescription,
      this.maxSpeed,
      this.maxHeight,
      this.minHeight,
      this.orientation,
      this.orientationType,
      this.direction,
      this.rotationAllowed,
      this.maxRotationSpeed,
      this.length,
      this.trajectory,
      this.corridor});

  Edges.fromJson(Map<String, dynamic> json) {
    edgeId = json['edgeId'];
    sequenceId = json['sequenceId'];
    released = json['released'];
    startNodeId = json['startNodeId'];
    endNodeId = json['endNodeId'];
    if (json['actions'] != null) {
      actions = <Actions>[];
      json['actions'].forEach((v) {
        actions!.add(new Actions.fromJson(v));
      });
    }
    edgeDescription = json['edgeDescription'];
    maxSpeed = json['maxSpeed'];
    maxHeight = json['maxHeight'];
    minHeight = json['minHeight'];
    orientation = json['orientation'];
    orientationType = json['orientationType'];
    direction = json['direction'];
    rotationAllowed = json['rotationAllowed'];
    maxRotationSpeed = json['maxRotationSpeed'];
    length = json['length'];
    trajectory = json['trajectory'] != null
        ? new Trajectory.fromJson(json['trajectory'])
        : null;
    corridor = json['corridor'] != null
        ? new Corridor.fromJson(json['corridor'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['edgeId'] = this.edgeId;
    data['sequenceId'] = this.sequenceId;
    data['released'] = this.released;
    data['startNodeId'] = this.startNodeId;
    data['endNodeId'] = this.endNodeId;
    if (this.actions != null) {
      data['actions'] = this.actions!.map((v) => v.toJson()).toList();
    }
    data['edgeDescription'] = this.edgeDescription;
    data['maxSpeed'] = this.maxSpeed;
    data['maxHeight'] = this.maxHeight;
    data['minHeight'] = this.minHeight;
    data['orientation'] = this.orientation;
    data['orientationType'] = this.orientationType;
    data['direction'] = this.direction;
    data['rotationAllowed'] = this.rotationAllowed;
    data['maxRotationSpeed'] = this.maxRotationSpeed;
    data['length'] = this.length;
    if (this.trajectory != null) {
      data['trajectory'] = this.trajectory!.toJson();
    }
    if (this.corridor != null) {
      data['corridor'] = this.corridor!.toJson();
    }
    return data;
  }
}

class ActionParameters {
  String? key;
  String? value;

  ActionParameters({this.key, this.value});

  ActionParameters.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    return data;
  }
}

class Trajectory {
  int? degree;
  List<int>? knotVector;
  List<ControlPoints>? controlPoints;

  Trajectory({this.degree, this.knotVector, this.controlPoints});

  Trajectory.fromJson(Map<String, dynamic> json) {
    degree = json['degree'];
    knotVector = json['knotVector'].cast<int>();
    if (json['controlPoints'] != null) {
      controlPoints = <ControlPoints>[];
      json['controlPoints'].forEach((v) {
        controlPoints!.add(new ControlPoints.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['degree'] = this.degree;
    data['knotVector'] = this.knotVector;
    if (this.controlPoints != null) {
      data['controlPoints'] =
          this.controlPoints!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ControlPoints {
  int? x;
  int? y;
  int? weight;

  ControlPoints({this.x, this.y, this.weight});

  ControlPoints.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    data['weight'] = this.weight;
    return data;
  }
}

class Corridor {
  int? leftWidth;
  int? rightWidth;
  String? corridorRefPoint;

  Corridor({this.leftWidth, this.rightWidth, this.corridorRefPoint});

  Corridor.fromJson(Map<String, dynamic> json) {
    leftWidth = json['leftWidth'];
    rightWidth = json['rightWidth'];
    corridorRefPoint = json['corridorRefPoint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['leftWidth'] = this.leftWidth;
    data['rightWidth'] = this.rightWidth;
    data['corridorRefPoint'] = this.corridorRefPoint;
    return data;
  }
}
