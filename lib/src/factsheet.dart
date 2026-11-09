// VDA 5050 v3.0.0 `factsheet` message (mobile robot -> fleet control).
//
// Schema: json_schemas/factsheet.schema

import 'common.dart';

class Factsheet {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  TypeSpecification? typeSpecification;
  PhysicalParameters? physicalParameters;
  ProtocolLimits? protocolLimits;
  ProtocolFeatures? protocolFeatures;
  MobileRobotGeometry? mobileRobotGeometry;
  LoadSpecification? loadSpecification;
  MobileRobotConfiguration? mobileRobotConfiguration;

  Factsheet({
    this.headerId,
    this.timestamp,
    this.version,
    this.manufacturer,
    this.serialNumber,
    this.typeSpecification,
    this.physicalParameters,
    this.protocolLimits,
    this.protocolFeatures,
    this.mobileRobotGeometry,
    this.loadSpecification,
    this.mobileRobotConfiguration,
  });

  Factsheet.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    typeSpecification = json['typeSpecification'] != null
        ? TypeSpecification.fromJson(json['typeSpecification'])
        : null;
    physicalParameters = json['physicalParameters'] != null
        ? PhysicalParameters.fromJson(json['physicalParameters'])
        : null;
    protocolLimits = json['protocolLimits'] != null
        ? ProtocolLimits.fromJson(json['protocolLimits'])
        : null;
    protocolFeatures = json['protocolFeatures'] != null
        ? ProtocolFeatures.fromJson(json['protocolFeatures'])
        : null;
    mobileRobotGeometry = json['mobileRobotGeometry'] != null
        ? MobileRobotGeometry.fromJson(json['mobileRobotGeometry'])
        : null;
    loadSpecification = json['loadSpecification'] != null
        ? LoadSpecification.fromJson(json['loadSpecification'])
        : null;
    mobileRobotConfiguration = json['mobileRobotConfiguration'] != null
        ? MobileRobotConfiguration.fromJson(json['mobileRobotConfiguration'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'headerId': headerId,
      'timestamp': timestamp,
      'version': version,
      'manufacturer': manufacturer,
      'serialNumber': serialNumber,
    };
    if (typeSpecification != null) {
      data['typeSpecification'] = typeSpecification!.toJson();
    }
    if (physicalParameters != null) {
      data['physicalParameters'] = physicalParameters!.toJson();
    }
    if (protocolLimits != null) data['protocolLimits'] = protocolLimits!.toJson();
    if (protocolFeatures != null) {
      data['protocolFeatures'] = protocolFeatures!.toJson();
    }
    if (mobileRobotGeometry != null) {
      data['mobileRobotGeometry'] = mobileRobotGeometry!.toJson();
    }
    if (loadSpecification != null) {
      data['loadSpecification'] = loadSpecification!.toJson();
    }
    if (mobileRobotConfiguration != null) {
      data['mobileRobotConfiguration'] = mobileRobotConfiguration!.toJson();
    }
    return data;
  }
}

class TypeSpecification {
  String? seriesName;
  String? seriesDescription;
  String? mobileRobotKinematics;
  String? mobileRobotClass;
  double? maximumLoadMass;
  List<String>? localizationTypes;
  List<String>? navigationTypes;
  List<String>? supportedZones;

  TypeSpecification({
    this.seriesName,
    this.seriesDescription,
    this.mobileRobotKinematics,
    this.mobileRobotClass,
    this.maximumLoadMass,
    this.localizationTypes,
    this.navigationTypes,
    this.supportedZones,
  });

  TypeSpecification.fromJson(Map<String, dynamic> json) {
    seriesName = json['seriesName'];
    seriesDescription = json['seriesDescription'];
    mobileRobotKinematics = json['mobileRobotKinematics'];
    mobileRobotClass = json['mobileRobotClass'];
    maximumLoadMass = asDouble(json['maximumLoadMass']);
    localizationTypes = asStringList(json['localizationTypes']);
    navigationTypes = asStringList(json['navigationTypes']);
    supportedZones = asStringList(json['supportedZones']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'seriesName': seriesName,
      'mobileRobotKinematics': mobileRobotKinematics,
      'mobileRobotClass': mobileRobotClass,
      'maximumLoadMass': maximumLoadMass,
      'localizationTypes': localizationTypes,
      'navigationTypes': navigationTypes,
    };
    if (seriesDescription != null) data['seriesDescription'] = seriesDescription;
    if (supportedZones != null) data['supportedZones'] = supportedZones;
    return data;
  }
}

class PhysicalParameters {
  double? minimumSpeed;
  double? maximumSpeed;
  double? minimumAngularSpeed;
  double? maximumAngularSpeed;
  double? maximumAcceleration;
  double? maximumDeceleration;
  double? minimumHeight;
  double? maximumHeight;
  double? width;
  double? length;

  PhysicalParameters({
    this.minimumSpeed,
    this.maximumSpeed,
    this.minimumAngularSpeed,
    this.maximumAngularSpeed,
    this.maximumAcceleration,
    this.maximumDeceleration,
    this.minimumHeight,
    this.maximumHeight,
    this.width,
    this.length,
  });

  PhysicalParameters.fromJson(Map<String, dynamic> json) {
    minimumSpeed = asDouble(json['minimumSpeed']);
    maximumSpeed = asDouble(json['maximumSpeed']);
    minimumAngularSpeed = asDouble(json['minimumAngularSpeed']);
    maximumAngularSpeed = asDouble(json['maximumAngularSpeed']);
    maximumAcceleration = asDouble(json['maximumAcceleration']);
    maximumDeceleration = asDouble(json['maximumDeceleration']);
    minimumHeight = asDouble(json['minimumHeight']);
    maximumHeight = asDouble(json['maximumHeight']);
    width = asDouble(json['width']);
    length = asDouble(json['length']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'minimumSpeed': minimumSpeed,
      'maximumSpeed': maximumSpeed,
      'maximumAcceleration': maximumAcceleration,
      'maximumDeceleration': maximumDeceleration,
      'minimumHeight': minimumHeight,
      'maximumHeight': maximumHeight,
      'width': width,
      'length': length,
    };
    if (minimumAngularSpeed != null) {
      data['minimumAngularSpeed'] = minimumAngularSpeed;
    }
    if (maximumAngularSpeed != null) {
      data['maximumAngularSpeed'] = maximumAngularSpeed;
    }
    return data;
  }
}

class ProtocolLimits {
  MaximumStringLengths? maximumStringLengths;
  MaximumArrayLengths? maximumArrayLengths;
  Timing? timing;

  ProtocolLimits({
    this.maximumStringLengths,
    this.maximumArrayLengths,
    this.timing,
  });

  ProtocolLimits.fromJson(Map<String, dynamic> json) {
    maximumStringLengths = json['maximumStringLengths'] != null
        ? MaximumStringLengths.fromJson(json['maximumStringLengths'])
        : null;
    maximumArrayLengths = json['maximumArrayLengths'] != null
        ? MaximumArrayLengths.fromJson(json['maximumArrayLengths'])
        : null;
    timing = json['timing'] != null ? Timing.fromJson(json['timing']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (maximumStringLengths != null) {
      data['maximumStringLengths'] = maximumStringLengths!.toJson();
    }
    if (maximumArrayLengths != null) {
      data['maximumArrayLengths'] = maximumArrayLengths!.toJson();
    }
    if (timing != null) data['timing'] = timing!.toJson();
    return data;
  }
}

class MaximumStringLengths {
  int? maximumMessageLength;
  int? maximumTopicSerialLength;
  int? maximumTopicElementLength;
  int? maximumIdLength;
  bool? idNumericalOnly;
  int? maximumLoadIdLength;

  MaximumStringLengths({
    this.maximumMessageLength,
    this.maximumTopicSerialLength,
    this.maximumTopicElementLength,
    this.maximumIdLength,
    this.idNumericalOnly,
    this.maximumLoadIdLength,
  });

  MaximumStringLengths.fromJson(Map<String, dynamic> json) {
    maximumMessageLength = json['maximumMessageLength'];
    maximumTopicSerialLength = json['maximumTopicSerialLength'];
    maximumTopicElementLength = json['maximumTopicElementLength'];
    maximumIdLength = json['maximumIdLength'];
    idNumericalOnly = json['idNumericalOnly'];
    maximumLoadIdLength = json['maximumLoadIdLength'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (maximumMessageLength != null) {
      data['maximumMessageLength'] = maximumMessageLength;
    }
    if (maximumTopicSerialLength != null) {
      data['maximumTopicSerialLength'] = maximumTopicSerialLength;
    }
    if (maximumTopicElementLength != null) {
      data['maximumTopicElementLength'] = maximumTopicElementLength;
    }
    if (maximumIdLength != null) data['maximumIdLength'] = maximumIdLength;
    if (idNumericalOnly != null) data['idNumericalOnly'] = idNumericalOnly;
    if (maximumLoadIdLength != null) {
      data['maximumLoadIdLength'] = maximumLoadIdLength;
    }
    return data;
  }
}

/// Maximum array lengths. Keys are the dotted JSON paths used by the schema
/// (e.g. `order.nodes`), preserved verbatim in [extra].
class MaximumArrayLengths {
  final Map<String, dynamic> extra;

  MaximumArrayLengths({Map<String, dynamic>? extra}) : extra = extra ?? {};

  MaximumArrayLengths.fromJson(Map<String, dynamic> json)
      : extra = Map<String, dynamic>.from(json);

  Map<String, dynamic> toJson() => Map<String, dynamic>.from(extra);
}

class Timing {
  double? minimumOrderInterval;
  double? minimumStateInterval;
  double? defaultStateInterval;
  double? visualizationInterval;

  Timing({
    this.minimumOrderInterval,
    this.minimumStateInterval,
    this.defaultStateInterval,
    this.visualizationInterval,
  });

  Timing.fromJson(Map<String, dynamic> json) {
    minimumOrderInterval = asDouble(json['minimumOrderInterval']);
    minimumStateInterval = asDouble(json['minimumStateInterval']);
    defaultStateInterval = asDouble(json['defaultStateInterval']);
    visualizationInterval = asDouble(json['visualizationInterval']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'minimumOrderInterval': minimumOrderInterval,
      'minimumStateInterval': minimumStateInterval,
    };
    if (defaultStateInterval != null) {
      data['defaultStateInterval'] = defaultStateInterval;
    }
    if (visualizationInterval != null) {
      data['visualizationInterval'] = visualizationInterval;
    }
    return data;
  }
}

class ProtocolFeatures {
  List<OptionalParameter>? optionalParameters;
  List<MobileRobotAction>? mobileRobotActions;

  ProtocolFeatures({this.optionalParameters, this.mobileRobotActions});

  ProtocolFeatures.fromJson(Map<String, dynamic> json) {
    optionalParameters =
        asList(json['optionalParameters'], OptionalParameter.fromJson);
    mobileRobotActions =
        asList(json['mobileRobotActions'], MobileRobotAction.fromJson);
  }

  Map<String, dynamic> toJson() => {
        'optionalParameters':
            (optionalParameters ?? const []).map((e) => e.toJson()).toList(),
        'mobileRobotActions':
            (mobileRobotActions ?? const []).map((e) => e.toJson()).toList(),
      };
}

class OptionalParameter {
  String? parameter;

  /// SUPPORTED or REQUIRED.
  String? support;
  String? description;

  OptionalParameter({this.parameter, this.support, this.description});

  OptionalParameter.fromJson(Map<String, dynamic> json) {
    parameter = json['parameter'];
    support = json['support'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'parameter': parameter, 'support': support};
    if (description != null) data['description'] = description;
    return data;
  }
}

class MobileRobotAction {
  String? actionType;
  String? actionDescription;

  /// Each entry is one of: INSTANT, NODE, EDGE, ZONE.
  List<String>? actionScopes;
  List<ActionParameterDefinition>? actionParameters;
  String? actionResult;

  /// Each entry is one of: NONE, SOFT, SINGLE, HARD.
  List<String>? blockingTypes;
  String? pauseAllowed;
  String? cancelAllowed;

  MobileRobotAction({
    this.actionType,
    this.actionDescription,
    this.actionScopes,
    this.actionParameters,
    this.actionResult,
    this.blockingTypes,
    this.pauseAllowed,
    this.cancelAllowed,
  });

  MobileRobotAction.fromJson(Map<String, dynamic> json) {
    actionType = json['actionType'];
    actionDescription = json['actionDescription'];
    actionScopes = asStringList(json['actionScopes']);
    actionParameters =
        asList(json['actionParameters'], ActionParameterDefinition.fromJson);
    actionResult = json['actionResult'];
    blockingTypes = asStringList(json['blockingTypes']);
    pauseAllowed = json['pauseAllowed'];
    cancelAllowed = json['cancelAllowed'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'actionType': actionType,
      'actionScopes': actionScopes,
      'pauseAllowed': pauseAllowed,
      'cancelAllowed': cancelAllowed,
    };
    if (actionDescription != null) data['actionDescription'] = actionDescription;
    if (actionParameters != null) {
      data['actionParameters'] =
          actionParameters!.map((e) => e.toJson()).toList();
    }
    if (actionResult != null) data['actionResult'] = actionResult;
    if (blockingTypes != null) data['blockingTypes'] = blockingTypes;
    return data;
  }
}

class ActionParameterDefinition {
  String? key;

  /// BOOL, NUMBER, INTEGER, STRING, OBJECT or ARRAY.
  String? valueDataType;
  String? description;
  bool? isOptional;

  ActionParameterDefinition({
    this.key,
    this.valueDataType,
    this.description,
    this.isOptional,
  });

  ActionParameterDefinition.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    valueDataType = json['valueDataType'];
    description = json['description'];
    isOptional = json['isOptional'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'key': key, 'valueDataType': valueDataType};
    if (description != null) data['description'] = description;
    if (isOptional != null) data['isOptional'] = isOptional;
    return data;
  }
}

class MobileRobotGeometry {
  List<WheelDefinition>? wheelDefinitions;
  List<Envelope2d>? envelopes2d;
  List<Envelope3d>? envelopes3d;

  MobileRobotGeometry({
    this.wheelDefinitions,
    this.envelopes2d,
    this.envelopes3d,
  });

  MobileRobotGeometry.fromJson(Map<String, dynamic> json) {
    wheelDefinitions =
        asList(json['wheelDefinitions'], WheelDefinition.fromJson);
    envelopes2d = asList(json['envelopes2d'], Envelope2d.fromJson);
    envelopes3d = asList(json['envelopes3d'], Envelope3d.fromJson);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (wheelDefinitions != null) {
      data['wheelDefinitions'] =
          wheelDefinitions!.map((e) => e.toJson()).toList();
    }
    if (envelopes2d != null) {
      data['envelopes2d'] = envelopes2d!.map((e) => e.toJson()).toList();
    }
    if (envelopes3d != null) {
      data['envelopes3d'] = envelopes3d!.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class WheelDefinition {
  String? type;
  bool? isActiveDriven;
  bool? isActiveSteered;
  WheelPosition? position;
  double? diameter;
  double? width;
  double? centerDisplacement;
  String? constraints;

  WheelDefinition({
    this.type,
    this.isActiveDriven,
    this.isActiveSteered,
    this.position,
    this.diameter,
    this.width,
    this.centerDisplacement,
    this.constraints,
  });

  WheelDefinition.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    isActiveDriven = json['isActiveDriven'];
    isActiveSteered = json['isActiveSteered'];
    position = json['position'] != null
        ? WheelPosition.fromJson(json['position'])
        : null;
    diameter = asDouble(json['diameter']);
    width = asDouble(json['width']);
    centerDisplacement = asDouble(json['centerDisplacement']);
    constraints = json['constraints'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'isActiveDriven': isActiveDriven,
      'isActiveSteered': isActiveSteered,
      'diameter': diameter,
      'width': width,
    };
    if (position != null) data['position'] = position!.toJson();
    if (centerDisplacement != null) {
      data['centerDisplacement'] = centerDisplacement;
    }
    if (constraints != null) data['constraints'] = constraints;
    return data;
  }
}

class WheelPosition {
  double? x;
  double? y;
  double? theta;

  WheelPosition({this.x, this.y, this.theta});

  WheelPosition.fromJson(Map<String, dynamic> json) {
    x = asDouble(json['x']);
    y = asDouble(json['y']);
    theta = asDouble(json['theta']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'x': x, 'y': y};
    if (theta != null) data['theta'] = theta;
    return data;
  }
}

class Envelope2d {
  String? envelope2dId;
  List<Vertex>? vertices;
  String? description;

  Envelope2d({this.envelope2dId, this.vertices, this.description});

  Envelope2d.fromJson(Map<String, dynamic> json) {
    envelope2dId = json['envelope2dId'];
    vertices = asList(json['vertices'], Vertex.fromJson);
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'envelope2dId': envelope2dId,
      'vertices': (vertices ?? const []).map((e) => e.toJson()).toList(),
    };
    if (description != null) data['description'] = description;
    return data;
  }
}

class Envelope3d {
  String? envelope3dId;
  String? format;
  dynamic data;
  String? url;
  String? description;

  Envelope3d({
    this.envelope3dId,
    this.format,
    this.data,
    this.url,
    this.description,
  });

  Envelope3d.fromJson(Map<String, dynamic> json) {
    envelope3dId = json['envelope3dId'];
    format = json['format'];
    data = json['data'];
    url = json['url'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final out = <String, dynamic>{
      'envelope3dId': envelope3dId,
      'format': format,
    };
    if (data != null) out['data'] = data;
    if (url != null) out['url'] = url;
    if (description != null) out['description'] = description;
    return out;
  }
}

class LoadSpecification {
  List<String>? loadPositions;
  List<LoadSet>? loadSets;

  LoadSpecification({this.loadPositions, this.loadSets});

  LoadSpecification.fromJson(Map<String, dynamic> json) {
    loadPositions = asStringList(json['loadPositions']);
    loadSets = asList(json['loadSets'], LoadSet.fromJson);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (loadPositions != null) data['loadPositions'] = loadPositions;
    if (loadSets != null) {
      data['loadSets'] = loadSets!.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class LoadSet {
  String? setName;
  String? loadType;
  List<String>? loadPositions;
  BoundingBoxReference? boundingBoxReference;
  LoadDimensions? loadDimensions;
  double? maximumWeight;
  double? minimumLoadhandlingHeight;
  double? maximumLoadhandlingHeight;
  double? minimumLoadhandlingDepth;
  double? maximumLoadhandlingDepth;
  double? minimumLoadhandlingTilt;
  double? maximumLoadhandlingTilt;
  double? maximumSpeed;
  double? maximumAcceleration;
  double? maximumDeceleration;
  double? pickTime;
  double? dropTime;
  String? description;

  LoadSet({
    this.setName,
    this.loadType,
    this.loadPositions,
    this.boundingBoxReference,
    this.loadDimensions,
    this.maximumWeight,
    this.minimumLoadhandlingHeight,
    this.maximumLoadhandlingHeight,
    this.minimumLoadhandlingDepth,
    this.maximumLoadhandlingDepth,
    this.minimumLoadhandlingTilt,
    this.maximumLoadhandlingTilt,
    this.maximumSpeed,
    this.maximumAcceleration,
    this.maximumDeceleration,
    this.pickTime,
    this.dropTime,
    this.description,
  });

  LoadSet.fromJson(Map<String, dynamic> json) {
    setName = json['setName'];
    loadType = json['loadType'];
    loadPositions = asStringList(json['loadPositions']);
    boundingBoxReference = json['boundingBoxReference'] != null
        ? BoundingBoxReference.fromJson(json['boundingBoxReference'])
        : null;
    loadDimensions = json['loadDimensions'] != null
        ? LoadDimensions.fromJson(json['loadDimensions'])
        : null;
    maximumWeight = asDouble(json['maximumWeight']);
    minimumLoadhandlingHeight = asDouble(json['minimumLoadhandlingHeight']);
    maximumLoadhandlingHeight = asDouble(json['maximumLoadhandlingHeight']);
    minimumLoadhandlingDepth = asDouble(json['minimumLoadhandlingDepth']);
    maximumLoadhandlingDepth = asDouble(json['maximumLoadhandlingDepth']);
    minimumLoadhandlingTilt = asDouble(json['minimumLoadhandlingTilt']);
    maximumLoadhandlingTilt = asDouble(json['maximumLoadhandlingTilt']);
    maximumSpeed = asDouble(json['maximumSpeed']);
    maximumAcceleration = asDouble(json['maximumAcceleration']);
    maximumDeceleration = asDouble(json['maximumDeceleration']);
    pickTime = asDouble(json['pickTime']);
    dropTime = asDouble(json['dropTime']);
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'setName': setName, 'loadType': loadType};
    void put(String k, dynamic v) {
      if (v != null) data[k] = v;
    }

    put('loadPositions', loadPositions);
    put('boundingBoxReference', boundingBoxReference?.toJson());
    put('loadDimensions', loadDimensions?.toJson());
    put('maximumWeight', maximumWeight);
    put('minimumLoadhandlingHeight', minimumLoadhandlingHeight);
    put('maximumLoadhandlingHeight', maximumLoadhandlingHeight);
    put('minimumLoadhandlingDepth', minimumLoadhandlingDepth);
    put('maximumLoadhandlingDepth', maximumLoadhandlingDepth);
    put('minimumLoadhandlingTilt', minimumLoadhandlingTilt);
    put('maximumLoadhandlingTilt', maximumLoadhandlingTilt);
    put('maximumSpeed', maximumSpeed);
    put('maximumAcceleration', maximumAcceleration);
    put('maximumDeceleration', maximumDeceleration);
    put('pickTime', pickTime);
    put('dropTime', dropTime);
    put('description', description);
    return data;
  }
}

class MobileRobotConfiguration {
  List<VersionEntry>? versions;
  NetworkInterface? network;
  BatteryCharging? batteryCharging;

  MobileRobotConfiguration({this.versions, this.network, this.batteryCharging});

  MobileRobotConfiguration.fromJson(Map<String, dynamic> json) {
    versions = asList(json['versions'], VersionEntry.fromJson);
    network = json['network'] != null
        ? NetworkInterface.fromJson(json['network'])
        : null;
    batteryCharging = json['batteryCharging'] != null
        ? BatteryCharging.fromJson(json['batteryCharging'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (versions != null) {
      data['versions'] = versions!.map((e) => e.toJson()).toList();
    }
    if (network != null) data['network'] = network!.toJson();
    if (batteryCharging != null) {
      data['batteryCharging'] = batteryCharging!.toJson();
    }
    return data;
  }
}

class VersionEntry {
  String? key;
  String? value;

  VersionEntry({this.key, this.value});

  VersionEntry.fromJson(Map<String, dynamic> json)
      : key = json['key'],
        value = json['value'];

  Map<String, dynamic> toJson() => {'key': key, 'value': value};
}

class NetworkInterface {
  List<String>? dnsServers;
  List<String>? ntpServers;
  String? localIpAddress;
  String? netmask;
  String? defaultGateway;

  NetworkInterface({
    this.dnsServers,
    this.ntpServers,
    this.localIpAddress,
    this.netmask,
    this.defaultGateway,
  });

  NetworkInterface.fromJson(Map<String, dynamic> json) {
    dnsServers = asStringList(json['dnsServers']);
    ntpServers = asStringList(json['ntpServers']);
    localIpAddress = json['localIpAddress'];
    netmask = json['netmask'];
    defaultGateway = json['defaultGateway'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (dnsServers != null) data['dnsServers'] = dnsServers;
    if (ntpServers != null) data['ntpServers'] = ntpServers;
    if (localIpAddress != null) data['localIpAddress'] = localIpAddress;
    if (netmask != null) data['netmask'] = netmask;
    if (defaultGateway != null) data['defaultGateway'] = defaultGateway;
    return data;
  }
}

class BatteryCharging {
  double? criticalLowChargingLevel;
  double? minimumDesiredChargingLevel;
  double? maximumDesiredChargingLevel;
  double? minimumChargingTime;

  BatteryCharging({
    this.criticalLowChargingLevel,
    this.minimumDesiredChargingLevel,
    this.maximumDesiredChargingLevel,
    this.minimumChargingTime,
  });

  BatteryCharging.fromJson(Map<String, dynamic> json) {
    criticalLowChargingLevel = asDouble(json['criticalLowChargingLevel']);
    minimumDesiredChargingLevel = asDouble(json['minimumDesiredChargingLevel']);
    maximumDesiredChargingLevel = asDouble(json['maximumDesiredChargingLevel']);
    minimumChargingTime = asDouble(json['minimumChargingTime']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (criticalLowChargingLevel != null) {
      data['criticalLowChargingLevel'] = criticalLowChargingLevel;
    }
    if (minimumDesiredChargingLevel != null) {
      data['minimumDesiredChargingLevel'] = minimumDesiredChargingLevel;
    }
    if (maximumDesiredChargingLevel != null) {
      data['maximumDesiredChargingLevel'] = maximumDesiredChargingLevel;
    }
    if (minimumChargingTime != null) {
      data['minimumChargingTime'] = minimumChargingTime;
    }
    return data;
  }
}
