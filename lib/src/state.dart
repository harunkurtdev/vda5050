// src/state.dart
class State {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  String? orderId;
  int? orderUpdateId;
  String? lastNodeId;
  int? lastNodeSequenceId;
  List<NodeStates>? nodeStates;
  List<EdgeStates>? edgeStates;
  bool? driving;
  List<ActionStates>? actionStates;
  BatteryState? batteryState;
  String? operatingMode;
  List<Errors>? errors;
  SafetyState? safetyState;
  List<Maps>? maps;
  String? zoneSetId;
  bool? paused;
  bool? newBaseRequest;
  int? distanceSinceLastNode;
  AgvPosition? agvPosition;
  Velocity? velocity;
  List<Loads>? loads;
  List<Information>? information;

  State(
      {this.headerId,
      this.timestamp,
      this.version,
      this.manufacturer,
      this.serialNumber,
      this.orderId,
      this.orderUpdateId,
      this.lastNodeId,
      this.lastNodeSequenceId,
      this.nodeStates,
      this.edgeStates,
      this.driving,
      this.actionStates,
      this.batteryState,
      this.operatingMode,
      this.errors,
      this.safetyState,
      this.maps,
      this.zoneSetId,
      this.paused,
      this.newBaseRequest,
      this.distanceSinceLastNode,
      this.agvPosition,
      this.velocity,
      this.loads,
      this.information});

  State.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    orderId = json['orderId'];
    orderUpdateId = json['orderUpdateId'];
    lastNodeId = json['lastNodeId'];
    lastNodeSequenceId = json['lastNodeSequenceId'];
    if (json['nodeStates'] != null) {
      nodeStates = <NodeStates>[];
      json['nodeStates'].forEach((v) {
        nodeStates!.add(new NodeStates.fromJson(v));
      });
    }
    if (json['edgeStates'] != null) {
      edgeStates = <EdgeStates>[];
      json['edgeStates'].forEach((v) {
        edgeStates!.add(new EdgeStates.fromJson(v));
      });
    }
    driving = json['driving'];
    if (json['actionStates'] != null) {
      actionStates = <ActionStates>[];
      json['actionStates'].forEach((v) {
        actionStates!.add(new ActionStates.fromJson(v));
      });
    }
    batteryState = json['batteryState'] != null
        ? new BatteryState.fromJson(json['batteryState'])
        : null;
    operatingMode = json['operatingMode'];
    if (json['errors'] != null) {
      errors = <Errors>[];
      json['errors'].forEach((v) {
        errors!.add(new Errors.fromJson(v));
      });
    }
    safetyState = json['safetyState'] != null
        ? new SafetyState.fromJson(json['safetyState'])
        : null;
    if (json['maps'] != null) {
      maps = <Maps>[];
      json['maps'].forEach((v) {
        maps!.add(new Maps.fromJson(v));
      });
    }
    zoneSetId = json['zoneSetId'];
    paused = json['paused'];
    newBaseRequest = json['newBaseRequest'];
    distanceSinceLastNode = json['distanceSinceLastNode'];
    agvPosition = json['agvPosition'] != null
        ? new AgvPosition.fromJson(json['agvPosition'])
        : null;
    velocity = json['velocity'] != null
        ? new Velocity.fromJson(json['velocity'])
        : null;
    if (json['loads'] != null) {
      loads = <Loads>[];
      json['loads'].forEach((v) {
        loads!.add(new Loads.fromJson(v));
      });
    }
    if (json['information'] != null) {
      information = <Information>[];
      json['information'].forEach((v) {
        information!.add(new Information.fromJson(v));
      });
    }
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
    data['lastNodeId'] = this.lastNodeId;
    data['lastNodeSequenceId'] = this.lastNodeSequenceId;
    if (this.nodeStates != null) {
      data['nodeStates'] = this.nodeStates!.map((v) => v.toJson()).toList();
    }
    if (this.edgeStates != null) {
      data['edgeStates'] = this.edgeStates!.map((v) => v.toJson()).toList();
    }
    data['driving'] = this.driving;
    if (this.actionStates != null) {
      data['actionStates'] = this.actionStates!.map((v) => v.toJson()).toList();
    }
    if (this.batteryState != null) {
      data['batteryState'] = this.batteryState!.toJson();
    }
    data['operatingMode'] = this.operatingMode;
    if (this.errors != null) {
      data['errors'] = this.errors!.map((v) => v.toJson()).toList();
    }
    if (this.safetyState != null) {
      data['safetyState'] = this.safetyState!.toJson();
    }
    if (this.maps != null) {
      data['maps'] = this.maps!.map((v) => v.toJson()).toList();
    }
    data['zoneSetId'] = this.zoneSetId;
    data['paused'] = this.paused;
    data['newBaseRequest'] = this.newBaseRequest;
    data['distanceSinceLastNode'] = this.distanceSinceLastNode;
    if (this.agvPosition != null) {
      data['agvPosition'] = this.agvPosition!.toJson();
    }
    if (this.velocity != null) {
      data['velocity'] = this.velocity!.toJson();
    }
    if (this.loads != null) {
      data['loads'] = this.loads!.map((v) => v.toJson()).toList();
    }
    if (this.information != null) {
      data['information'] = this.information!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NodeStates {
  String? nodeId;
  int? sequenceId;
  bool? released;
  String? nodeDescription;
  NodePosition? nodePosition;

  NodeStates(
      {this.nodeId,
      this.sequenceId,
      this.released,
      this.nodeDescription,
      this.nodePosition});

  NodeStates.fromJson(Map<String, dynamic> json) {
    nodeId = json['nodeId'];
    sequenceId = json['sequenceId'];
    released = json['released'];
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
    data['nodeDescription'] = this.nodeDescription;
    if (this.nodePosition != null) {
      data['nodePosition'] = this.nodePosition!.toJson();
    }
    return data;
  }
}

class NodePosition {
  int? x;
  int? y;
  String? mapId;
  int? theta;

  NodePosition({this.x, this.y, this.mapId, this.theta});

  NodePosition.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
    mapId = json['mapId'];
    theta = json['theta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    data['mapId'] = this.mapId;
    data['theta'] = this.theta;
    return data;
  }
}

class EdgeStates {
  String? edgeId;
  int? sequenceId;
  bool? released;
  String? edgeDescription;
  Trajectory? trajectory;

  EdgeStates(
      {this.edgeId,
      this.sequenceId,
      this.released,
      this.edgeDescription,
      this.trajectory});

  EdgeStates.fromJson(Map<String, dynamic> json) {
    edgeId = json['edgeId'];
    sequenceId = json['sequenceId'];
    released = json['released'];
    edgeDescription = json['edgeDescription'];
    trajectory = json['trajectory'] != null
        ? new Trajectory.fromJson(json['trajectory'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['edgeId'] = this.edgeId;
    data['sequenceId'] = this.sequenceId;
    data['released'] = this.released;
    data['edgeDescription'] = this.edgeDescription;
    if (this.trajectory != null) {
      data['trajectory'] = this.trajectory!.toJson();
    }
    return data;
  }
}

class Trajectory {
  int? degree;
  List<double>? knotVector;
  List<ControlPoints>? controlPoints;

  Trajectory({this.degree, this.knotVector, this.controlPoints});

  Trajectory.fromJson(Map<String, dynamic> json) {
    degree = json['degree'];
    knotVector = json['knotVector'].cast<double>();
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

class ActionStates {
  String? actionId;
  String? actionStatus;
  String? actionType;
  String? actionDescription;
  String? resultDescription;

  ActionStates(
      {this.actionId,
      this.actionStatus,
      this.actionType,
      this.actionDescription,
      this.resultDescription});

  ActionStates.fromJson(Map<String, dynamic> json) {
    actionId = json['actionId'];
    actionStatus = json['actionStatus'];
    actionType = json['actionType'];
    actionDescription = json['actionDescription'];
    resultDescription = json['resultDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actionId'] = this.actionId;
    data['actionStatus'] = this.actionStatus;
    data['actionType'] = this.actionType;
    data['actionDescription'] = this.actionDescription;
    data['resultDescription'] = this.resultDescription;
    return data;
  }
}

class BatteryState {
  int? batteryCharge;
  bool? charging;
  int? batteryVoltage;
  int? batteryHealth;
  int? reach;

  BatteryState(
      {this.batteryCharge,
      this.charging,
      this.batteryVoltage,
      this.batteryHealth,
      this.reach});

  BatteryState.fromJson(Map<String, dynamic> json) {
    batteryCharge = json['batteryCharge'];
    charging = json['charging'];
    batteryVoltage = json['batteryVoltage'];
    batteryHealth = json['batteryHealth'];
    reach = json['reach'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['batteryCharge'] = this.batteryCharge;
    data['charging'] = this.charging;
    data['batteryVoltage'] = this.batteryVoltage;
    data['batteryHealth'] = this.batteryHealth;
    data['reach'] = this.reach;
    return data;
  }
}

class Errors {
  String? errorType;
  String? errorLevel;
  List<ErrorReferences>? errorReferences;
  String? errorDescription;
  String? errorHint;

  Errors(
      {this.errorType,
      this.errorLevel,
      this.errorReferences,
      this.errorDescription,
      this.errorHint});

  Errors.fromJson(Map<String, dynamic> json) {
    errorType = json['errorType'];
    errorLevel = json['errorLevel'];
    if (json['errorReferences'] != null) {
      errorReferences = <ErrorReferences>[];
      json['errorReferences'].forEach((v) {
        errorReferences!.add(new ErrorReferences.fromJson(v));
      });
    }
    errorDescription = json['errorDescription'];
    errorHint = json['errorHint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errorType'] = this.errorType;
    data['errorLevel'] = this.errorLevel;
    if (this.errorReferences != null) {
      data['errorReferences'] =
          this.errorReferences!.map((v) => v.toJson()).toList();
    }
    data['errorDescription'] = this.errorDescription;
    data['errorHint'] = this.errorHint;
    return data;
  }
}

class ErrorReferences {
  String? referenceKey;
  String? referenceValue;

  ErrorReferences({this.referenceKey, this.referenceValue});

  ErrorReferences.fromJson(Map<String, dynamic> json) {
    referenceKey = json['referenceKey'];
    referenceValue = json['referenceValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['referenceKey'] = this.referenceKey;
    data['referenceValue'] = this.referenceValue;
    return data;
  }
}

class SafetyState {
  String? eStop;
  bool? fieldViolation;

  SafetyState({this.eStop, this.fieldViolation});

  SafetyState.fromJson(Map<String, dynamic> json) {
    eStop = json['eStop'];
    fieldViolation = json['fieldViolation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eStop'] = this.eStop;
    data['fieldViolation'] = this.fieldViolation;
    return data;
  }
}

class Maps {
  String? mapId;
  String? mapVersion;
  String? mapStatus;
  String? mapDescription;

  Maps({this.mapId, this.mapVersion, this.mapStatus, this.mapDescription});

  Maps.fromJson(Map<String, dynamic> json) {
    mapId = json['mapId'];
    mapVersion = json['mapVersion'];
    mapStatus = json['mapStatus'];
    mapDescription = json['mapDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mapId'] = this.mapId;
    data['mapVersion'] = this.mapVersion;
    data['mapStatus'] = this.mapStatus;
    data['mapDescription'] = this.mapDescription;
    return data;
  }
}

class AgvPosition {
  int? x;
  int? y;
  int? theta;
  String? mapId;
  bool? positionInitialized;
  String? mapDescription;
  double? localizationScore;
  int? deviationRange;

  AgvPosition(
      {this.x,
      this.y,
      this.theta,
      this.mapId,
      this.positionInitialized,
      this.mapDescription,
      this.localizationScore,
      this.deviationRange});

  AgvPosition.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
    theta = json['theta'];
    mapId = json['mapId'];
    positionInitialized = json['positionInitialized'];
    mapDescription = json['mapDescription'];
    localizationScore = json['localizationScore'];
    deviationRange = json['deviationRange'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    data['theta'] = this.theta;
    data['mapId'] = this.mapId;
    data['positionInitialized'] = this.positionInitialized;
    data['mapDescription'] = this.mapDescription;
    data['localizationScore'] = this.localizationScore;
    data['deviationRange'] = this.deviationRange;
    return data;
  }
}

class Velocity {
  int? vx;
  int? vy;
  int? omega;

  Velocity({this.vx, this.vy, this.omega});

  Velocity.fromJson(Map<String, dynamic> json) {
    vx = json['vx'];
    vy = json['vy'];
    omega = json['omega'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vx'] = this.vx;
    data['vy'] = this.vy;
    data['omega'] = this.omega;
    return data;
  }
}

class Loads {
  String? loadId;
  String? loadType;
  String? loadPosition;
  BoundingBoxReference? boundingBoxReference;
  LoadDimensions? loadDimensions;
  int? weight;

  Loads(
      {this.loadId,
      this.loadType,
      this.loadPosition,
      this.boundingBoxReference,
      this.loadDimensions,
      this.weight});

  Loads.fromJson(Map<String, dynamic> json) {
    loadId = json['loadId'];
    loadType = json['loadType'];
    loadPosition = json['loadPosition'];
    boundingBoxReference = json['boundingBoxReference'] != null
        ? new BoundingBoxReference.fromJson(json['boundingBoxReference'])
        : null;
    loadDimensions = json['loadDimensions'] != null
        ? new LoadDimensions.fromJson(json['loadDimensions'])
        : null;
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loadId'] = this.loadId;
    data['loadType'] = this.loadType;
    data['loadPosition'] = this.loadPosition;
    if (this.boundingBoxReference != null) {
      data['boundingBoxReference'] = this.boundingBoxReference!.toJson();
    }
    if (this.loadDimensions != null) {
      data['loadDimensions'] = this.loadDimensions!.toJson();
    }
    data['weight'] = this.weight;
    return data;
  }
}

class BoundingBoxReference {
  int? x;
  int? y;
  int? z;
  int? theta;

  BoundingBoxReference({this.x, this.y, this.z, this.theta});

  BoundingBoxReference.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
    z = json['z'];
    theta = json['theta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    data['z'] = this.z;
    data['theta'] = this.theta;
    return data;
  }
}

class LoadDimensions {
  int? length;
  int? width;
  int? height;

  LoadDimensions({this.length, this.width, this.height});

  LoadDimensions.fromJson(Map<String, dynamic> json) {
    length = json['length'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['length'] = this.length;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class Information {
  String? infoType;
  String? infoLevel;
  List<InfoReferences>? infoReferences;
  String? infoDescription;

  Information(
      {this.infoType,
      this.infoLevel,
      this.infoReferences,
      this.infoDescription});

  Information.fromJson(Map<String, dynamic> json) {
    infoType = json['infoType'];
    infoLevel = json['infoLevel'];
    if (json['infoReferences'] != null) {
      infoReferences = <InfoReferences>[];
      json['infoReferences'].forEach((v) {
        infoReferences!.add(new InfoReferences.fromJson(v));
      });
    }
    infoDescription = json['infoDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['infoType'] = this.infoType;
    data['infoLevel'] = this.infoLevel;
    if (this.infoReferences != null) {
      data['infoReferences'] =
          this.infoReferences!.map((v) => v.toJson()).toList();
    }
    data['infoDescription'] = this.infoDescription;
    return data;
  }
}
