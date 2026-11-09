// VDA 5050 v3.0.0 `state` message (mobile robot -> fleet control).
//
// Schema: json_schemas/state.schema

import 'common.dart';

class State {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  List<MapState>? maps;
  List<ZoneSetState>? zoneSets;
  String? orderId;
  int? orderUpdateId;
  String? lastNodeId;
  int? lastNodeSequenceId;
  List<NodeState>? nodeStates;
  List<EdgeState>? edgeStates;
  PlannedPath? plannedPath;
  IntermediatePath? intermediatePath;
  MobileRobotPosition? mobileRobotPosition;
  Velocity? velocity;
  List<Load>? loads;
  bool? driving;
  bool? paused;
  bool? newBaseRequest;
  List<ZoneRequest>? zoneRequests;
  List<EdgeRequest>? edgeRequests;
  double? distanceSinceLastNode;
  List<ActionState>? actionStates;
  List<ActionState>? instantActionStates;
  List<ActionState>? zoneActionStates;
  PowerSupply? powerSupply;

  /// One of: STARTUP, AUTOMATIC, SEMIAUTOMATIC, INTERVENED, MANUAL, SERVICE,
  /// TEACH_IN.
  String? operatingMode;
  List<StateError>? errors;
  List<Info>? information;
  SafetyState? safetyState;

  State({
    this.headerId,
    this.timestamp,
    this.version,
    this.manufacturer,
    this.serialNumber,
    this.maps,
    this.zoneSets,
    this.orderId,
    this.orderUpdateId,
    this.lastNodeId,
    this.lastNodeSequenceId,
    this.nodeStates,
    this.edgeStates,
    this.plannedPath,
    this.intermediatePath,
    this.mobileRobotPosition,
    this.velocity,
    this.loads,
    this.driving,
    this.paused,
    this.newBaseRequest,
    this.zoneRequests,
    this.edgeRequests,
    this.distanceSinceLastNode,
    this.actionStates,
    this.instantActionStates,
    this.zoneActionStates,
    this.powerSupply,
    this.operatingMode,
    this.errors,
    this.information,
    this.safetyState,
  });

  State.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    maps = asList(json['maps'], MapState.fromJson);
    zoneSets = asList(json['zoneSets'], ZoneSetState.fromJson);
    orderId = json['orderId'];
    orderUpdateId = json['orderUpdateId'];
    lastNodeId = json['lastNodeId'];
    lastNodeSequenceId = json['lastNodeSequenceId'];
    nodeStates = asList(json['nodeStates'], NodeState.fromJson);
    edgeStates = asList(json['edgeStates'], EdgeState.fromJson);
    plannedPath = json['plannedPath'] != null
        ? PlannedPath.fromJson(json['plannedPath'])
        : null;
    intermediatePath = json['intermediatePath'] != null
        ? IntermediatePath.fromJson(json['intermediatePath'])
        : null;
    mobileRobotPosition = json['mobileRobotPosition'] != null
        ? MobileRobotPosition.fromJson(json['mobileRobotPosition'])
        : null;
    velocity =
        json['velocity'] != null ? Velocity.fromJson(json['velocity']) : null;
    loads = asList(json['loads'], Load.fromJson);
    driving = json['driving'];
    paused = json['paused'];
    newBaseRequest = json['newBaseRequest'];
    zoneRequests = asList(json['zoneRequests'], ZoneRequest.fromJson);
    edgeRequests = asList(json['edgeRequests'], EdgeRequest.fromJson);
    distanceSinceLastNode = asDouble(json['distanceSinceLastNode']);
    actionStates = asList(json['actionStates'], ActionState.fromJson);
    instantActionStates =
        asList(json['instantActionStates'], ActionState.fromJson);
    zoneActionStates =
        asList(json['zoneActionStates'], ActionState.fromJson);
    powerSupply = json['powerSupply'] != null
        ? PowerSupply.fromJson(json['powerSupply'])
        : null;
    operatingMode = json['operatingMode'];
    errors = asList(json['errors'], StateError.fromJson);
    information = asList(json['information'], Info.fromJson);
    safetyState = json['safetyState'] != null
        ? SafetyState.fromJson(json['safetyState'])
        : null;
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
      'lastNodeId': lastNodeId,
      'lastNodeSequenceId': lastNodeSequenceId,
      'driving': driving,
      'operatingMode': operatingMode,
    };
    if (maps != null) data['maps'] = maps!.map((e) => e.toJson()).toList();
    if (zoneSets != null) {
      data['zoneSets'] = zoneSets!.map((e) => e.toJson()).toList();
    }
    data['nodeStates'] =
        (nodeStates ?? const []).map((e) => e.toJson()).toList();
    data['edgeStates'] =
        (edgeStates ?? const []).map((e) => e.toJson()).toList();
    if (plannedPath != null) data['plannedPath'] = plannedPath!.toJson();
    if (intermediatePath != null) {
      data['intermediatePath'] = intermediatePath!.toJson();
    }
    if (mobileRobotPosition != null) {
      data['mobileRobotPosition'] = mobileRobotPosition!.toJson();
    }
    if (velocity != null) data['velocity'] = velocity!.toJson();
    if (loads != null) data['loads'] = loads!.map((e) => e.toJson()).toList();
    if (paused != null) data['paused'] = paused;
    if (newBaseRequest != null) data['newBaseRequest'] = newBaseRequest;
    if (zoneRequests != null) {
      data['zoneRequests'] = zoneRequests!.map((e) => e.toJson()).toList();
    }
    if (edgeRequests != null) {
      data['edgeRequests'] = edgeRequests!.map((e) => e.toJson()).toList();
    }
    if (distanceSinceLastNode != null) {
      data['distanceSinceLastNode'] = distanceSinceLastNode;
    }
    data['actionStates'] =
        (actionStates ?? const []).map((e) => e.toJson()).toList();
    data['instantActionStates'] =
        (instantActionStates ?? const []).map((e) => e.toJson()).toList();
    if (zoneActionStates != null) {
      data['zoneActionStates'] =
          zoneActionStates!.map((e) => e.toJson()).toList();
    }
    if (powerSupply != null) data['powerSupply'] = powerSupply!.toJson();
    data['errors'] = (errors ?? const []).map((e) => e.toJson()).toList();
    if (information != null) {
      data['information'] = information!.map((e) => e.toJson()).toList();
    }
    if (safetyState != null) data['safetyState'] = safetyState!.toJson();
    return data;
  }
}

class MapState {
  String? mapId;
  String? mapVersion;
  String? mapDescriptor;

  /// ENABLED or DISABLED.
  String? mapStatus;

  MapState({this.mapId, this.mapVersion, this.mapDescriptor, this.mapStatus});

  MapState.fromJson(Map<String, dynamic> json) {
    mapId = json['mapId'];
    mapVersion = json['mapVersion'];
    mapDescriptor = json['mapDescriptor'];
    mapStatus = json['mapStatus'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'mapId': mapId,
      'mapVersion': mapVersion,
      'mapStatus': mapStatus,
    };
    if (mapDescriptor != null) data['mapDescriptor'] = mapDescriptor;
    return data;
  }
}

class ZoneSetState {
  String? zoneSetId;
  String? mapId;

  /// ENABLED or DISABLED.
  String? zoneSetStatus;

  ZoneSetState({this.zoneSetId, this.mapId, this.zoneSetStatus});

  ZoneSetState.fromJson(Map<String, dynamic> json) {
    zoneSetId = json['zoneSetId'];
    mapId = json['mapId'];
    zoneSetStatus = json['zoneSetStatus'];
  }

  Map<String, dynamic> toJson() =>
      {'zoneSetId': zoneSetId, 'mapId': mapId, 'zoneSetStatus': zoneSetStatus};
}

class NodeState {
  String? nodeId;
  int? sequenceId;
  String? nodeDescriptor;
  bool? released;
  NodePosition? nodePosition;

  NodeState({
    this.nodeId,
    this.sequenceId,
    this.nodeDescriptor,
    this.released,
    this.nodePosition,
  });

  NodeState.fromJson(Map<String, dynamic> json) {
    nodeId = json['nodeId'];
    sequenceId = json['sequenceId'];
    nodeDescriptor = json['nodeDescriptor'];
    released = json['released'];
    nodePosition = json['nodePosition'] != null
        ? NodePosition.fromJson(json['nodePosition'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'nodeId': nodeId,
      'sequenceId': sequenceId,
      'released': released,
    };
    if (nodeDescriptor != null) data['nodeDescriptor'] = nodeDescriptor;
    if (nodePosition != null) data['nodePosition'] = nodePosition!.toJson();
    return data;
  }
}

class EdgeState {
  String? edgeId;
  int? sequenceId;
  String? edgeDescriptor;
  bool? released;
  Trajectory? trajectory;

  EdgeState({
    this.edgeId,
    this.sequenceId,
    this.edgeDescriptor,
    this.released,
    this.trajectory,
  });

  EdgeState.fromJson(Map<String, dynamic> json) {
    edgeId = json['edgeId'];
    sequenceId = json['sequenceId'];
    edgeDescriptor = json['edgeDescriptor'];
    released = json['released'];
    trajectory = json['trajectory'] != null
        ? Trajectory.fromJson(json['trajectory'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'edgeId': edgeId,
      'sequenceId': sequenceId,
      'released': released,
    };
    if (edgeDescriptor != null) data['edgeDescriptor'] = edgeDescriptor;
    if (trajectory != null) data['trajectory'] = trajectory!.toJson();
    return data;
  }
}

class Load {
  String? loadId;
  String? loadType;
  String? loadPosition;
  BoundingBoxReference? boundingBoxReference;
  LoadDimensions? loadDimensions;
  double? weight;

  Load({
    this.loadId,
    this.loadType,
    this.loadPosition,
    this.boundingBoxReference,
    this.loadDimensions,
    this.weight,
  });

  Load.fromJson(Map<String, dynamic> json) {
    loadId = json['loadId'];
    loadType = json['loadType'];
    loadPosition = json['loadPosition'];
    boundingBoxReference = json['boundingBoxReference'] != null
        ? BoundingBoxReference.fromJson(json['boundingBoxReference'])
        : null;
    loadDimensions = json['loadDimensions'] != null
        ? LoadDimensions.fromJson(json['loadDimensions'])
        : null;
    weight = asDouble(json['weight']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (loadId != null) data['loadId'] = loadId;
    if (loadType != null) data['loadType'] = loadType;
    if (loadPosition != null) data['loadPosition'] = loadPosition;
    if (boundingBoxReference != null) {
      data['boundingBoxReference'] = boundingBoxReference!.toJson();
    }
    if (loadDimensions != null) {
      data['loadDimensions'] = loadDimensions!.toJson();
    }
    if (weight != null) data['weight'] = weight;
    return data;
  }
}

class ZoneRequest {
  String? requestId;

  /// ACCESS or REPLANNING.
  String? requestType;
  String? zoneId;
  String? zoneSetId;

  /// REQUESTED, GRANTED, REVOKED or EXPIRED.
  String? requestStatus;
  Trajectory? trajectory;

  ZoneRequest({
    this.requestId,
    this.requestType,
    this.zoneId,
    this.zoneSetId,
    this.requestStatus,
    this.trajectory,
  });

  ZoneRequest.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    requestType = json['requestType'];
    zoneId = json['zoneId'];
    zoneSetId = json['zoneSetId'];
    requestStatus = json['requestStatus'];
    trajectory = json['trajectory'] != null
        ? Trajectory.fromJson(json['trajectory'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'requestId': requestId,
      'requestType': requestType,
      'zoneId': zoneId,
      'zoneSetId': zoneSetId,
      'requestStatus': requestStatus,
    };
    if (trajectory != null) data['trajectory'] = trajectory!.toJson();
    return data;
  }
}

class EdgeRequest {
  String? requestId;

  /// CORRIDOR.
  String? requestType;
  String? edgeId;
  int? sequenceId;

  /// REQUESTED, GRANTED, REVOKED or EXPIRED.
  String? requestStatus;

  EdgeRequest({
    this.requestId,
    this.requestType,
    this.edgeId,
    this.sequenceId,
    this.requestStatus,
  });

  EdgeRequest.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    requestType = json['requestType'];
    edgeId = json['edgeId'];
    sequenceId = json['sequenceId'];
    requestStatus = json['requestStatus'];
  }

  Map<String, dynamic> toJson() => {
        'requestId': requestId,
        'requestType': requestType,
        'edgeId': edgeId,
        'sequenceId': sequenceId,
        'requestStatus': requestStatus,
      };
}

class ActionState {
  String? actionId;
  String? actionType;
  String? actionDescriptor;

  /// WAITING, INITIALIZING, RUNNING, PAUSED, RETRIABLE, FINISHED or FAILED.
  String? actionStatus;
  String? actionResult;

  ActionState({
    this.actionId,
    this.actionType,
    this.actionDescriptor,
    this.actionStatus,
    this.actionResult,
  });

  ActionState.fromJson(Map<String, dynamic> json) {
    actionId = json['actionId'];
    actionType = json['actionType'];
    actionDescriptor = json['actionDescriptor'];
    actionStatus = json['actionStatus'];
    actionResult = json['actionResult'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'actionId': actionId,
      'actionStatus': actionStatus,
    };
    if (actionType != null) data['actionType'] = actionType;
    if (actionDescriptor != null) data['actionDescriptor'] = actionDescriptor;
    if (actionResult != null) data['actionResult'] = actionResult;
    return data;
  }
}

class PowerSupply {
  double? stateOfCharge;
  double? batteryVoltage;
  double? batteryCurrent;
  double? batteryHealth;
  bool? charging;
  double? range;

  PowerSupply({
    this.stateOfCharge,
    this.batteryVoltage,
    this.batteryCurrent,
    this.batteryHealth,
    this.charging,
    this.range,
  });

  PowerSupply.fromJson(Map<String, dynamic> json) {
    stateOfCharge = asDouble(json['stateOfCharge']);
    batteryVoltage = asDouble(json['batteryVoltage']);
    batteryCurrent = asDouble(json['batteryCurrent']);
    batteryHealth = asDouble(json['batteryHealth']);
    charging = json['charging'];
    range = asDouble(json['range']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'stateOfCharge': stateOfCharge,
      'charging': charging,
    };
    if (batteryVoltage != null) data['batteryVoltage'] = batteryVoltage;
    if (batteryCurrent != null) data['batteryCurrent'] = batteryCurrent;
    if (batteryHealth != null) data['batteryHealth'] = batteryHealth;
    if (range != null) data['range'] = range;
    return data;
  }
}

class StateError {
  String? errorType;
  List<Reference>? errorReferences;
  String? errorDescription;
  List<Translation>? errorDescriptionTranslations;
  String? errorHint;
  List<Translation>? errorHintTranslations;

  /// WARNING, URGENT, CRITICAL or FATAL.
  String? errorLevel;

  StateError({
    this.errorType,
    this.errorReferences,
    this.errorDescription,
    this.errorDescriptionTranslations,
    this.errorHint,
    this.errorHintTranslations,
    this.errorLevel,
  });

  StateError.fromJson(Map<String, dynamic> json) {
    errorType = json['errorType'];
    errorReferences = asList(json['errorReferences'], Reference.fromJson);
    errorDescription = json['errorDescription'];
    errorDescriptionTranslations =
        asList(json['errorDescriptionTranslations'], Translation.fromJson);
    errorHint = json['errorHint'];
    errorHintTranslations =
        asList(json['errorHintTranslations'], Translation.fromJson);
    errorLevel = json['errorLevel'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'errorType': errorType,
      'errorLevel': errorLevel,
    };
    if (errorReferences != null) {
      data['errorReferences'] =
          errorReferences!.map((e) => e.toJson()).toList();
    }
    if (errorDescription != null) data['errorDescription'] = errorDescription;
    if (errorDescriptionTranslations != null) {
      data['errorDescriptionTranslations'] =
          errorDescriptionTranslations!.map((e) => e.toJson()).toList();
    }
    if (errorHint != null) data['errorHint'] = errorHint;
    if (errorHintTranslations != null) {
      data['errorHintTranslations'] =
          errorHintTranslations!.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Translation {
  /// ISO 639-1 language key.
  String? translationKey;
  String? translationValue;

  Translation({this.translationKey, this.translationValue});

  Translation.fromJson(Map<String, dynamic> json)
      : translationKey = json['translationKey'],
        translationValue = json['translationValue'];

  Map<String, dynamic> toJson() => {
        'translationKey': translationKey,
        'translationValue': translationValue,
      };
}

class Info {
  String? infoType;
  List<Reference>? infoReferences;
  String? infoDescriptor;

  /// INFO or DEBUG.
  String? infoLevel;

  Info({
    this.infoType,
    this.infoReferences,
    this.infoDescriptor,
    this.infoLevel,
  });

  Info.fromJson(Map<String, dynamic> json) {
    infoType = json['infoType'];
    infoReferences = asList(json['infoReferences'], Reference.fromJson);
    infoDescriptor = json['infoDescriptor'];
    infoLevel = json['infoLevel'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'infoType': infoType,
      'infoLevel': infoLevel,
    };
    if (infoReferences != null) {
      data['infoReferences'] = infoReferences!.map((e) => e.toJson()).toList();
    }
    if (infoDescriptor != null) data['infoDescriptor'] = infoDescriptor;
    return data;
  }
}

class SafetyState {
  /// MANUAL, REMOTE or NONE.
  String? activeEmergencyStop;
  bool? fieldViolation;

  SafetyState({this.activeEmergencyStop, this.fieldViolation});

  SafetyState.fromJson(Map<String, dynamic> json) {
    activeEmergencyStop = json['activeEmergencyStop'];
    fieldViolation = json['fieldViolation'];
  }

  Map<String, dynamic> toJson() => {
        'activeEmergencyStop': activeEmergencyStop,
        'fieldViolation': fieldViolation,
      };
}
