// Shared value types and JSON helpers for the VDA 5050 v3.0.0 messages.
//
// Wire format is VDA 5050 JSON over MQTT. All keys are camelCase and match
// the field names in `~/nav2_ws/src/VDA5050/json_schemas/*.schema` exactly.

/// Protocol version implemented by this library.
const String vda5050Version = '3.0.0';

// ---------------------------------------------------------------------------
// JSON parsing helpers
// ---------------------------------------------------------------------------

/// Parses a JSON number (int or double) into a nullable [double].
double? asDouble(dynamic value) => value == null ? null : (value as num).toDouble();

/// Parses a JSON array of numbers into a `List<double>`.
List<double>? asDoubleList(dynamic value) => value == null
    ? null
    : (value as List).map((e) => (e as num).toDouble()).toList();

/// Parses a JSON array of strings into a `List<String>`.
List<String>? asStringList(dynamic value) =>
    value == null ? null : (value as List).map((e) => e as String).toList();

/// Parses a JSON array of objects into `List<T>` using [fromJson].
List<T>? asList<T>(dynamic value, T Function(Map<String, dynamic>) fromJson) =>
    value == null
        ? null
        : (value as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList();

// ---------------------------------------------------------------------------
// Actions (shared by order nodes/edges and instantActions)
// ---------------------------------------------------------------------------

class Action {
  String? actionType;
  String? actionId;
  String? actionDescriptor;

  /// One of: NONE, SOFT, SINGLE, HARD.
  String? blockingType;
  List<ActionParameter>? actionParameters;
  bool? retriable;

  Action({
    this.actionType,
    this.actionId,
    this.actionDescriptor,
    this.blockingType,
    this.actionParameters,
    this.retriable,
  });

  Action.fromJson(Map<String, dynamic> json) {
    actionType = json['actionType'];
    actionId = json['actionId'];
    actionDescriptor = json['actionDescriptor'];
    blockingType = json['blockingType'];
    actionParameters =
        asList(json['actionParameters'], ActionParameter.fromJson);
    retriable = json['retriable'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'actionType': actionType,
      'actionId': actionId,
      'blockingType': blockingType,
    };
    if (actionDescriptor != null) data['actionDescriptor'] = actionDescriptor;
    if (actionParameters != null) {
      data['actionParameters'] =
          actionParameters!.map((e) => e.toJson()).toList();
    }
    if (retriable != null) data['retriable'] = retriable;
    return data;
  }
}

class ActionParameter {
  String? key;

  /// Value may be any JSON type: array, bool, number, integer, string, object.
  dynamic value;

  ActionParameter({this.key, this.value});

  ActionParameter.fromJson(Map<String, dynamic> json)
      : key = json['key'],
        value = json['value'];

  Map<String, dynamic> toJson() => {'key': key, 'value': value};
}

// ---------------------------------------------------------------------------
// Geometry / positioning
// ---------------------------------------------------------------------------

class NodePosition {
  double? x;
  double? y;
  double? theta;
  String? mapId;
  AllowedDeviationXY? allowedDeviationXY;
  double? allowedDeviationTheta;

  NodePosition({
    this.x,
    this.y,
    this.theta,
    this.mapId,
    this.allowedDeviationXY,
    this.allowedDeviationTheta,
  });

  NodePosition.fromJson(Map<String, dynamic> json) {
    x = asDouble(json['x']);
    y = asDouble(json['y']);
    theta = asDouble(json['theta']);
    mapId = json['mapId'];
    allowedDeviationXY = json['allowedDeviationXY'] != null
        ? AllowedDeviationXY.fromJson(json['allowedDeviationXY'])
        : null;
    allowedDeviationTheta = asDouble(json['allowedDeviationTheta']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'x': x, 'y': y, 'mapId': mapId};
    if (theta != null) data['theta'] = theta;
    if (allowedDeviationXY != null) {
      data['allowedDeviationXY'] = allowedDeviationXY!.toJson();
    }
    if (allowedDeviationTheta != null) {
      data['allowedDeviationTheta'] = allowedDeviationTheta;
    }
    return data;
  }
}

class AllowedDeviationXY {
  double? a;
  double? b;
  double? theta;

  AllowedDeviationXY({this.a, this.b, this.theta});

  AllowedDeviationXY.fromJson(Map<String, dynamic> json) {
    a = asDouble(json['a']);
    b = asDouble(json['b']);
    theta = asDouble(json['theta']);
  }

  Map<String, dynamic> toJson() => {'a': a, 'b': b, 'theta': theta};
}

class MobileRobotPosition {
  double? x;
  double? y;
  double? theta;
  String? mapId;
  bool? localized;
  double? localizationScore;
  double? deviationRange;

  MobileRobotPosition({
    this.x,
    this.y,
    this.theta,
    this.mapId,
    this.localized,
    this.localizationScore,
    this.deviationRange,
  });

  MobileRobotPosition.fromJson(Map<String, dynamic> json) {
    x = asDouble(json['x']);
    y = asDouble(json['y']);
    theta = asDouble(json['theta']);
    mapId = json['mapId'];
    localized = json['localized'];
    localizationScore = asDouble(json['localizationScore']);
    deviationRange = asDouble(json['deviationRange']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'x': x,
      'y': y,
      'theta': theta,
      'mapId': mapId,
      'localized': localized,
    };
    if (localizationScore != null) data['localizationScore'] = localizationScore;
    if (deviationRange != null) data['deviationRange'] = deviationRange;
    return data;
  }
}

class Velocity {
  double? vx;
  double? vy;
  double? omega;

  Velocity({this.vx, this.vy, this.omega});

  Velocity.fromJson(Map<String, dynamic> json) {
    vx = asDouble(json['vx']);
    vy = asDouble(json['vy']);
    omega = asDouble(json['omega']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (vx != null) data['vx'] = vx;
    if (vy != null) data['vy'] = vy;
    if (omega != null) data['omega'] = omega;
    return data;
  }
}

// ---------------------------------------------------------------------------
// Trajectory (NURBS) and paths
// ---------------------------------------------------------------------------

class Trajectory {
  int? degree;
  List<double>? knotVector;
  List<ControlPoint>? controlPoints;

  Trajectory({this.degree, this.knotVector, this.controlPoints});

  Trajectory.fromJson(Map<String, dynamic> json) {
    degree = json['degree'];
    knotVector = asDoubleList(json['knotVector']);
    controlPoints = asList(json['controlPoints'], ControlPoint.fromJson);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (degree != null) data['degree'] = degree;
    if (knotVector != null) data['knotVector'] = knotVector;
    if (controlPoints != null) {
      data['controlPoints'] = controlPoints!.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class ControlPoint {
  double? x;
  double? y;
  double? weight;

  ControlPoint({this.x, this.y, this.weight});

  ControlPoint.fromJson(Map<String, dynamic> json) {
    x = asDouble(json['x']);
    y = asDouble(json['y']);
    weight = asDouble(json['weight']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'x': x, 'y': y};
    if (weight != null) data['weight'] = weight;
    return data;
  }
}

class PlannedPath {
  Trajectory? trajectory;
  List<String>? traversedNodes;

  PlannedPath({this.trajectory, this.traversedNodes});

  PlannedPath.fromJson(Map<String, dynamic> json) {
    trajectory = json['trajectory'] != null
        ? Trajectory.fromJson(json['trajectory'])
        : null;
    traversedNodes = asStringList(json['traversedNodes']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (trajectory != null) data['trajectory'] = trajectory!.toJson();
    if (traversedNodes != null) data['traversedNodes'] = traversedNodes;
    return data;
  }
}

class IntermediatePath {
  List<Waypoint>? polyline;

  IntermediatePath({this.polyline});

  IntermediatePath.fromJson(Map<String, dynamic> json)
      : polyline = asList(json['polyline'], Waypoint.fromJson);

  Map<String, dynamic> toJson() => {
        if (polyline != null)
          'polyline': polyline!.map((e) => e.toJson()).toList(),
      };
}

class Waypoint {
  double? x;
  double? y;
  double? theta;
  String? eta;

  Waypoint({this.x, this.y, this.theta, this.eta});

  Waypoint.fromJson(Map<String, dynamic> json) {
    x = asDouble(json['x']);
    y = asDouble(json['y']);
    theta = asDouble(json['theta']);
    eta = json['eta'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'x': x, 'y': y, 'eta': eta};
    if (theta != null) data['theta'] = theta;
    return data;
  }
}

/// A 2D `{x, y}` point used by zone polygons and 2D envelopes.
class Vertex {
  double? x;
  double? y;

  Vertex({this.x, this.y});

  Vertex.fromJson(Map<String, dynamic> json)
      : x = asDouble(json['x']),
        y = asDouble(json['y']);

  Map<String, dynamic> toJson() => {'x': x, 'y': y};
}

class BoundingBoxReference {
  double? x;
  double? y;
  double? z;
  double? theta;

  BoundingBoxReference({this.x, this.y, this.z, this.theta});

  BoundingBoxReference.fromJson(Map<String, dynamic> json) {
    x = asDouble(json['x']);
    y = asDouble(json['y']);
    z = asDouble(json['z']);
    theta = asDouble(json['theta']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'x': x, 'y': y, 'z': z};
    if (theta != null) data['theta'] = theta;
    return data;
  }
}

class LoadDimensions {
  double? length;
  double? width;
  double? height;

  LoadDimensions({this.length, this.width, this.height});

  LoadDimensions.fromJson(Map<String, dynamic> json) {
    length = asDouble(json['length']);
    width = asDouble(json['width']);
    height = asDouble(json['height']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'length': length, 'width': width};
    if (height != null) data['height'] = height;
    return data;
  }
}

/// A `{referenceKey, referenceValue}` pair used by error/info references.
class Reference {
  String? referenceKey;
  String? referenceValue;

  Reference({this.referenceKey, this.referenceValue});

  Reference.fromJson(Map<String, dynamic> json)
      : referenceKey = json['referenceKey'],
        referenceValue = json['referenceValue'];

  Map<String, dynamic> toJson() =>
      {'referenceKey': referenceKey, 'referenceValue': referenceValue};
}
