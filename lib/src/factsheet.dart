class FactSheet {
  String? version;
  String? manufacturer;
  String? serialNumber;
  TypeSpecification? typeSpecification;
  PhysicalParameters? physicalParameters;
  ProtocolLimits? protocolLimits;
  ProtocolFeatures? protocolFeatures;
  AgvGeometry? agvGeometry;
  LoadSpecification? loadSpecification;
  int? headerId;
  String? timestamp;
  VehicleConfig? vehicleConfig;

  FactSheet(
      {this.version,
      this.manufacturer,
      this.serialNumber,
      this.typeSpecification,
      this.physicalParameters,
      this.protocolLimits,
      this.protocolFeatures,
      this.agvGeometry,
      this.loadSpecification,
      this.headerId,
      this.timestamp,
      this.vehicleConfig});

  FactSheet.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    typeSpecification = json['typeSpecification'] != null
        ? new TypeSpecification.fromJson(json['typeSpecification'])
        : null;
    physicalParameters = json['physicalParameters'] != null
        ? new PhysicalParameters.fromJson(json['physicalParameters'])
        : null;
    protocolLimits = json['protocolLimits'] != null
        ? new ProtocolLimits.fromJson(json['protocolLimits'])
        : null;
    protocolFeatures = json['protocolFeatures'] != null
        ? new ProtocolFeatures.fromJson(json['protocolFeatures'])
        : null;
    agvGeometry = json['agvGeometry'] != null
        ? new AgvGeometry.fromJson(json['agvGeometry'])
        : null;
    loadSpecification = json['loadSpecification'] != null
        ? new LoadSpecification.fromJson(json['loadSpecification'])
        : null;
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    vehicleConfig = json['vehicleConfig'] != null
        ? new VehicleConfig.fromJson(json['vehicleConfig'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['manufacturer'] = this.manufacturer;
    data['serialNumber'] = this.serialNumber;
    if (this.typeSpecification != null) {
      data['typeSpecification'] = this.typeSpecification!.toJson();
    }
    if (this.physicalParameters != null) {
      data['physicalParameters'] = this.physicalParameters!.toJson();
    }
    if (this.protocolLimits != null) {
      data['protocolLimits'] = this.protocolLimits!.toJson();
    }
    if (this.protocolFeatures != null) {
      data['protocolFeatures'] = this.protocolFeatures!.toJson();
    }
    if (this.agvGeometry != null) {
      data['agvGeometry'] = this.agvGeometry!.toJson();
    }
    if (this.loadSpecification != null) {
      data['loadSpecification'] = this.loadSpecification!.toJson();
    }
    data['headerId'] = this.headerId;
    data['timestamp'] = this.timestamp;
    if (this.vehicleConfig != null) {
      data['vehicleConfig'] = this.vehicleConfig!.toJson();
    }
    return data;
  }
}

class TypeSpecification {
  String? seriesName;
  String? agvKinematic;
  String? agvClass;
  int? maxLoadMass;
  List<String>? localizationTypes;
  List<String>? navigationTypes;
  String? seriesDescription;

  TypeSpecification(
      {this.seriesName,
      this.agvKinematic,
      this.agvClass,
      this.maxLoadMass,
      this.localizationTypes,
      this.navigationTypes,
      this.seriesDescription});

  TypeSpecification.fromJson(Map<String, dynamic> json) {
    seriesName = json['seriesName'];
    agvKinematic = json['agvKinematic'];
    agvClass = json['agvClass'];
    maxLoadMass = json['maxLoadMass'];
    localizationTypes = json['localizationTypes'].cast<String>();
    navigationTypes = json['navigationTypes'].cast<String>();
    seriesDescription = json['seriesDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['seriesName'] = this.seriesName;
    data['agvKinematic'] = this.agvKinematic;
    data['agvClass'] = this.agvClass;
    data['maxLoadMass'] = this.maxLoadMass;
    data['localizationTypes'] = this.localizationTypes;
    data['navigationTypes'] = this.navigationTypes;
    data['seriesDescription'] = this.seriesDescription;
    return data;
  }
}

class PhysicalParameters {
  int? speedMin;
  int? speedMax;
  int? accelerationMax;
  int? decelerationMax;
  int? heightMax;
  int? width;
  int? length;
  int? heightMin;

  PhysicalParameters(
      {this.speedMin,
      this.speedMax,
      this.accelerationMax,
      this.decelerationMax,
      this.heightMax,
      this.width,
      this.length,
      this.heightMin});

  PhysicalParameters.fromJson(Map<String, dynamic> json) {
    speedMin = json['speedMin'];
    speedMax = json['speedMax'];
    accelerationMax = json['accelerationMax'];
    decelerationMax = json['decelerationMax'];
    heightMax = json['heightMax'];
    width = json['width'];
    length = json['length'];
    heightMin = json['heightMin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speedMin'] = this.speedMin;
    data['speedMax'] = this.speedMax;
    data['accelerationMax'] = this.accelerationMax;
    data['decelerationMax'] = this.decelerationMax;
    data['heightMax'] = this.heightMax;
    data['width'] = this.width;
    data['length'] = this.length;
    data['heightMin'] = this.heightMin;
    return data;
  }
}

class ProtocolLimits {
  MaxStringLens? maxStringLens;
  MaxArrayLens? maxArrayLens;
  Timing? timing;

  ProtocolLimits({this.maxStringLens, this.maxArrayLens, this.timing});

  ProtocolLimits.fromJson(Map<String, dynamic> json) {
    maxStringLens = json['maxStringLens'] != null
        ? new MaxStringLens.fromJson(json['maxStringLens'])
        : null;
    maxArrayLens = json['maxArrayLens'] != null
        ? new MaxArrayLens.fromJson(json['maxArrayLens'])
        : null;
    timing =
        json['timing'] != null ? new Timing.fromJson(json['timing']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.maxStringLens != null) {
      data['maxStringLens'] = this.maxStringLens!.toJson();
    }
    if (this.maxArrayLens != null) {
      data['maxArrayLens'] = this.maxArrayLens!.toJson();
    }
    if (this.timing != null) {
      data['timing'] = this.timing!.toJson();
    }
    return data;
  }
}

class MaxStringLens {
  int? msgLen;
  int? topicSerialLen;
  int? topicElemLen;
  int? idLen;
  bool? idNumericalOnly;
  int? enumLen;
  int? loadIdLen;

  MaxStringLens(
      {this.msgLen,
      this.topicSerialLen,
      this.topicElemLen,
      this.idLen,
      this.idNumericalOnly,
      this.enumLen,
      this.loadIdLen});

  MaxStringLens.fromJson(Map<String, dynamic> json) {
    msgLen = json['msgLen'];
    topicSerialLen = json['topicSerialLen'];
    topicElemLen = json['topicElemLen'];
    idLen = json['idLen'];
    idNumericalOnly = json['idNumericalOnly'];
    enumLen = json['enumLen'];
    loadIdLen = json['loadIdLen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msgLen'] = this.msgLen;
    data['topicSerialLen'] = this.topicSerialLen;
    data['topicElemLen'] = this.topicElemLen;
    data['idLen'] = this.idLen;
    data['idNumericalOnly'] = this.idNumericalOnly;
    data['enumLen'] = this.enumLen;
    data['loadIdLen'] = this.loadIdLen;
    return data;
  }
}

class MaxArrayLens {
  int? orderNodes;
  int? orderEdges;
  int? nodeActions;
  int? edgeActions;
  int? actionsActionsParameters;
  int? instantActions;
  int? trajectoryKnotVector;
  int? trajectoryControlPoints;
  int? stateNodeStates;
  int? stateEdgeStates;
  int? stateLoads;
  int? stateActionStates;
  int? stateErrors;
  int? stateInformation;
  int? errorErrorReferences;
  int? informationInfoReferences;

  MaxArrayLens(
      {this.orderNodes,
      this.orderEdges,
      this.nodeActions,
      this.edgeActions,
      this.actionsActionsParameters,
      this.instantActions,
      this.trajectoryKnotVector,
      this.trajectoryControlPoints,
      this.stateNodeStates,
      this.stateEdgeStates,
      this.stateLoads,
      this.stateActionStates,
      this.stateErrors,
      this.stateInformation,
      this.errorErrorReferences,
      this.informationInfoReferences});

  MaxArrayLens.fromJson(Map<String, dynamic> json) {
    orderNodes = json['order.nodes'];
    orderEdges = json['order.edges'];
    nodeActions = json['node.actions'];
    edgeActions = json['edge.actions'];
    actionsActionsParameters = json['actions.actionsParameters'];
    instantActions = json['instantActions'];
    trajectoryKnotVector = json['trajectory.knotVector'];
    trajectoryControlPoints = json['trajectory.controlPoints'];
    stateNodeStates = json['state.nodeStates'];
    stateEdgeStates = json['state.edgeStates'];
    stateLoads = json['state.loads'];
    stateActionStates = json['state.actionStates'];
    stateErrors = json['state.errors'];
    stateInformation = json['state.information'];
    errorErrorReferences = json['error.errorReferences'];
    informationInfoReferences = json['information.infoReferences'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order.nodes'] = this.orderNodes;
    data['order.edges'] = this.orderEdges;
    data['node.actions'] = this.nodeActions;
    data['edge.actions'] = this.edgeActions;
    data['actions.actionsParameters'] = this.actionsActionsParameters;
    data['instantActions'] = this.instantActions;
    data['trajectory.knotVector'] = this.trajectoryKnotVector;
    data['trajectory.controlPoints'] = this.trajectoryControlPoints;
    data['state.nodeStates'] = this.stateNodeStates;
    data['state.edgeStates'] = this.stateEdgeStates;
    data['state.loads'] = this.stateLoads;
    data['state.actionStates'] = this.stateActionStates;
    data['state.errors'] = this.stateErrors;
    data['state.information'] = this.stateInformation;
    data['error.errorReferences'] = this.errorErrorReferences;
    data['information.infoReferences'] = this.informationInfoReferences;
    return data;
  }
}

class Timing {
  int? minOrderInterval;
  int? minStateInterval;
  int? defaultStateInterval;
  int? visualizationInterval;

  Timing(
      {this.minOrderInterval,
      this.minStateInterval,
      this.defaultStateInterval,
      this.visualizationInterval});

  Timing.fromJson(Map<String, dynamic> json) {
    minOrderInterval = json['minOrderInterval'];
    minStateInterval = json['minStateInterval'];
    defaultStateInterval = json['defaultStateInterval'];
    visualizationInterval = json['visualizationInterval'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['minOrderInterval'] = this.minOrderInterval;
    data['minStateInterval'] = this.minStateInterval;
    data['defaultStateInterval'] = this.defaultStateInterval;
    data['visualizationInterval'] = this.visualizationInterval;
    return data;
  }
}

class ProtocolFeatures {
  List<OptionalParameters>? optionalParameters;
  List<AgvActions>? agvActions;

  ProtocolFeatures({this.optionalParameters, this.agvActions});

  ProtocolFeatures.fromJson(Map<String, dynamic> json) {
    if (json['optionalParameters'] != null) {
      optionalParameters = <OptionalParameters>[];
      json['optionalParameters'].forEach((v) {
        optionalParameters!.add(new OptionalParameters.fromJson(v));
      });
    }
    if (json['agvActions'] != null) {
      agvActions = <AgvActions>[];
      json['agvActions'].forEach((v) {
        agvActions!.add(new AgvActions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.optionalParameters != null) {
      data['optionalParameters'] =
          this.optionalParameters!.map((v) => v.toJson()).toList();
    }
    if (this.agvActions != null) {
      data['agvActions'] = this.agvActions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OptionalParameters {
  String? parameter;
  String? support;
  String? description;

  OptionalParameters({this.parameter, this.support, this.description});

  OptionalParameters.fromJson(Map<String, dynamic> json) {
    parameter = json['parameter'];
    support = json['support'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['parameter'] = this.parameter;
    data['support'] = this.support;
    data['description'] = this.description;
    return data;
  }
}

class AgvActions {
  String? actionType;
  List<String>? actionScopes;
  String? actionDescription;
  List<ActionParameters>? actionParameters;
  String? resultDescription;
  // List<Object>? blockingTypes;

  AgvActions(
      {this.actionType,
      this.actionScopes,
      this.actionDescription,
      this.actionParameters,
      this.resultDescription});

  AgvActions.fromJson(Map<String, dynamic> json) {
    actionType = json['actionType'];
    actionScopes = json['actionScopes'].cast<String>();
    actionDescription = json['actionDescription'];
    if (json['actionParameters'] != null) {
      actionParameters = <ActionParameters>[];
      json['actionParameters'].forEach((v) {
        actionParameters!.add(new ActionParameters.fromJson(v));
      });
    }
    resultDescription = json['resultDescription'];
    // if (json['blockingTypes'] != null) {
    // 	blockingTypes = <Null>[];
    // 	json['blockingTypes'].forEach((v) { blockingTypes!.add(new Null.fromJson(v)); });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actionType'] = this.actionType;
    data['actionScopes'] = this.actionScopes;
    data['actionDescription'] = this.actionDescription;
    if (this.actionParameters != null) {
      data['actionParameters'] =
          this.actionParameters!.map((v) => v.toJson()).toList();
    }
    data['resultDescription'] = this.resultDescription;
    // if (this.blockingTypes != null) {
    //   data['blockingTypes'] = this.blockingTypes!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class ActionParameters {
  String? key;
  String? valueDataType;
  String? description;
  bool? isOptional;

  ActionParameters(
      {this.key, this.valueDataType, this.description, this.isOptional});

  ActionParameters.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    valueDataType = json['valueDataType'];
    description = json['description'];
    isOptional = json['isOptional'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['valueDataType'] = this.valueDataType;
    data['description'] = this.description;
    data['isOptional'] = this.isOptional;
    return data;
  }
}

class AgvGeometry {
  List<WheelDefinitions>? wheelDefinitions;
  List<Envelopes2d>? envelopes2d;
  List<Envelopes3d>? envelopes3d;

  AgvGeometry({this.wheelDefinitions, this.envelopes2d, this.envelopes3d});

  AgvGeometry.fromJson(Map<String, dynamic> json) {
    if (json['wheelDefinitions'] != null) {
      wheelDefinitions = <WheelDefinitions>[];
      json['wheelDefinitions'].forEach((v) {
        wheelDefinitions!.add(new WheelDefinitions.fromJson(v));
      });
    }
    if (json['envelopes2d'] != null) {
      envelopes2d = <Envelopes2d>[];
      json['envelopes2d'].forEach((v) {
        envelopes2d!.add(new Envelopes2d.fromJson(v));
      });
    }
    if (json['envelopes3d'] != null) {
      envelopes3d = <Envelopes3d>[];
      json['envelopes3d'].forEach((v) {
        envelopes3d!.add(new Envelopes3d.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.wheelDefinitions != null) {
      data['wheelDefinitions'] =
          this.wheelDefinitions!.map((v) => v.toJson()).toList();
    }
    if (this.envelopes2d != null) {
      data['envelopes2d'] = this.envelopes2d!.map((v) => v.toJson()).toList();
    }
    if (this.envelopes3d != null) {
      data['envelopes3d'] = this.envelopes3d!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WheelDefinitions {
  String? type;
  bool? isActiveDriven;
  bool? isActiveSteered;
  Position? position;
  int? diameter;
  int? width;
  int? centerDisplacement;
  String? constraints;

  WheelDefinitions(
      {this.type,
      this.isActiveDriven,
      this.isActiveSteered,
      this.position,
      this.diameter,
      this.width,
      this.centerDisplacement,
      this.constraints});

  WheelDefinitions.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    isActiveDriven = json['isActiveDriven'];
    isActiveSteered = json['isActiveSteered'];
    position = json['position'] != null
        ? new Position.fromJson(json['position'])
        : null;
    diameter = json['diameter'];
    width = json['width'];
    centerDisplacement = json['centerDisplacement'];
    constraints = json['constraints'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['isActiveDriven'] = this.isActiveDriven;
    data['isActiveSteered'] = this.isActiveSteered;
    if (this.position != null) {
      data['position'] = this.position!.toJson();
    }
    data['diameter'] = this.diameter;
    data['width'] = this.width;
    data['centerDisplacement'] = this.centerDisplacement;
    data['constraints'] = this.constraints;
    return data;
  }
}

class Position {
  int? x;
  int? y;
  int? theta;

  Position({this.x, this.y, this.theta});

  Position.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
    theta = json['theta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    data['theta'] = this.theta;
    return data;
  }
}

class Envelopes2d {
  String? set;
  List<PolygonPoints>? polygonPoints;
  String? description;

  Envelopes2d({this.set, this.polygonPoints, this.description});

  Envelopes2d.fromJson(Map<String, dynamic> json) {
    set = json['set'];
    if (json['polygonPoints'] != null) {
      polygonPoints = <PolygonPoints>[];
      json['polygonPoints'].forEach((v) {
        polygonPoints!.add(new PolygonPoints.fromJson(v));
      });
    }
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['set'] = this.set;
    if (this.polygonPoints != null) {
      data['polygonPoints'] =
          this.polygonPoints!.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    return data;
  }
}

class PolygonPoints {
  int? x;
  int? y;

  PolygonPoints({this.x, this.y});

  PolygonPoints.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    return data;
  }
}

class Envelopes3d {
  String? set;
  String? format;
  Data? data;
  String? url;
  int? description;

  Envelopes3d({this.set, this.format, this.data, this.url, this.description});

  Envelopes3d.fromJson(Map<String, dynamic> json) {
    set = json['set'];
    format = json['format'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    url = json['url'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['set'] = this.set;
    data['format'] = this.format;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['url'] = this.url;
    data['description'] = this.description;
    return data;
  }
}

class Data {
  Data();

  Data.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class LoadSpecification {
  List<String>? loadPositions;
  List<LoadSets>? loadSets;

  LoadSpecification({this.loadPositions, this.loadSets});

  LoadSpecification.fromJson(Map<String, dynamic> json) {
    loadPositions = json['loadPositions'].cast<String>();
    if (json['loadSets'] != null) {
      loadSets = <LoadSets>[];
      json['loadSets'].forEach((v) {
        loadSets!.add(new LoadSets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loadPositions'] = this.loadPositions;
    if (this.loadSets != null) {
      data['loadSets'] = this.loadSets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LoadSets {
  String? setName;
  String? loadType;
  List<String>? loadPositions;
  BoundingBoxReference? boundingBoxReference;
  LoadDimensions? loadDimensions;
  int? maxWeight;
  int? minLoadhandlingHeight;
  int? maxLoadhandlingHeight;
  int? minLoadhandlingDepth;
  int? maxLoadhandlingDepth;
  int? minLoadhandlingTilt;
  int? maxLoadhandlingTilt;
  int? agvSpeedLimit;
  int? agvAccelerationLimit;
  int? agvDecelerationLimit;
  int? pickTime;
  int? dropTime;
  String? description;

  LoadSets(
      {this.setName,
      this.loadType,
      this.loadPositions,
      this.boundingBoxReference,
      this.loadDimensions,
      this.maxWeight,
      this.minLoadhandlingHeight,
      this.maxLoadhandlingHeight,
      this.minLoadhandlingDepth,
      this.maxLoadhandlingDepth,
      this.minLoadhandlingTilt,
      this.maxLoadhandlingTilt,
      this.agvSpeedLimit,
      this.agvAccelerationLimit,
      this.agvDecelerationLimit,
      this.pickTime,
      this.dropTime,
      this.description});

  LoadSets.fromJson(Map<String, dynamic> json) {
    setName = json['setName'];
    loadType = json['loadType'];
    loadPositions = json['loadPositions'].cast<String>();
    boundingBoxReference = json['boundingBoxReference'] != null
        ? new BoundingBoxReference.fromJson(json['boundingBoxReference'])
        : null;
    loadDimensions = json['loadDimensions'] != null
        ? new LoadDimensions.fromJson(json['loadDimensions'])
        : null;
    maxWeight = json['maxWeight'];
    minLoadhandlingHeight = json['minLoadhandlingHeight'];
    maxLoadhandlingHeight = json['maxLoadhandlingHeight'];
    minLoadhandlingDepth = json['minLoadhandlingDepth'];
    maxLoadhandlingDepth = json['maxLoadhandlingDepth'];
    minLoadhandlingTilt = json['minLoadhandlingTilt'];
    maxLoadhandlingTilt = json['maxLoadhandlingTilt'];
    agvSpeedLimit = json['agvSpeedLimit'];
    agvAccelerationLimit = json['agvAccelerationLimit'];
    agvDecelerationLimit = json['agvDecelerationLimit'];
    pickTime = json['pickTime'];
    dropTime = json['dropTime'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['setName'] = this.setName;
    data['loadType'] = this.loadType;
    data['loadPositions'] = this.loadPositions;
    if (this.boundingBoxReference != null) {
      data['boundingBoxReference'] = this.boundingBoxReference!.toJson();
    }
    if (this.loadDimensions != null) {
      data['loadDimensions'] = this.loadDimensions!.toJson();
    }
    data['maxWeight'] = this.maxWeight;
    data['minLoadhandlingHeight'] = this.minLoadhandlingHeight;
    data['maxLoadhandlingHeight'] = this.maxLoadhandlingHeight;
    data['minLoadhandlingDepth'] = this.minLoadhandlingDepth;
    data['maxLoadhandlingDepth'] = this.maxLoadhandlingDepth;
    data['minLoadhandlingTilt'] = this.minLoadhandlingTilt;
    data['maxLoadhandlingTilt'] = this.maxLoadhandlingTilt;
    data['agvSpeedLimit'] = this.agvSpeedLimit;
    data['agvAccelerationLimit'] = this.agvAccelerationLimit;
    data['agvDecelerationLimit'] = this.agvDecelerationLimit;
    data['pickTime'] = this.pickTime;
    data['dropTime'] = this.dropTime;
    data['description'] = this.description;
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

class VehicleConfig {
  List<Versions>? versions;
  Network? network;

  VehicleConfig({this.versions, this.network});

  VehicleConfig.fromJson(Map<String, dynamic> json) {
    if (json['versions'] != null) {
      versions = <Versions>[];
      json['versions'].forEach((v) {
        versions!.add(new Versions.fromJson(v));
      });
    }
    network =
        json['network'] != null ? new Network.fromJson(json['network']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.versions != null) {
      data['versions'] = this.versions!.map((v) => v.toJson()).toList();
    }
    if (this.network != null) {
      data['network'] = this.network!.toJson();
    }
    return data;
  }
}

class Versions {
  String? key;
  String? value;

  Versions({this.key, this.value});

  Versions.fromJson(Map<String, dynamic> json) {
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

class Network {
  // List<String>? dnsServers;
  String? localIpAddress;
  List<String>? ntpServers;
  String? netmask;
  String? defaultGateway;

  Network(
      {this.localIpAddress,
      this.ntpServers,
      this.netmask,
      this.defaultGateway});

  Network.fromJson(Map<String, dynamic> json) {
    // if (json['dnsServers'] != null) {
    // 	dnsServers = <String>[];
    // 	json['dnsServers'].forEach((v as <>[]) { dnsServers!.add(new v.toString()); });
    // }
    localIpAddress = json['localIpAddress'];
    ntpServers = json['ntpServers'].cast<String>();
    netmask = json['netmask'];
    defaultGateway = json['defaultGateway'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // if (this.dnsServers != null) {
    //   data['dnsServers'] = this.dnsServers!.map((v) => v.toJson()).toList();
    // }
    data['localIpAddress'] = this.localIpAddress;
    data['ntpServers'] = this.ntpServers;
    data['netmask'] = this.netmask;
    data['defaultGateway'] = this.defaultGateway;
    return data;
  }
}
