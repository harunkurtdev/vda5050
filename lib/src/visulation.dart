// src/visulation.dart
class Visulation {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  AgvPosition? agvPosition;
  Velocity? velocity;

  Visulation(
      {this.headerId,
      this.timestamp,
      this.version,
      this.manufacturer,
      this.serialNumber,
      this.agvPosition,
      this.velocity});

  Visulation.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    agvPosition = json['agvPosition'] != null
        ? new AgvPosition.fromJson(json['agvPosition'])
        : null;
    velocity = json['velocity'] != null
        ? new Velocity.fromJson(json['velocity'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['headerId'] = this.headerId;
    data['timestamp'] = this.timestamp;
    data['version'] = this.version;
    data['manufacturer'] = this.manufacturer;
    data['serialNumber'] = this.serialNumber;
    if (this.agvPosition != null) {
      data['agvPosition'] = this.agvPosition!.toJson();
    }
    if (this.velocity != null) {
      data['velocity'] = this.velocity!.toJson();
    }
    return data;
  }
}

class AgvPosition {
  int? x;
  int? y;
  int? theta;
  String? mapId;
  bool? positionInitialized;
  double? localizationScore;
  int? deviationRange;

  AgvPosition(
      {this.x,
      this.y,
      this.theta,
      this.mapId,
      this.positionInitialized,
      this.localizationScore,
      this.deviationRange});

  AgvPosition.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
    theta = json['theta'];
    mapId = json['mapId'];
    positionInitialized = json['positionInitialized'];
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
