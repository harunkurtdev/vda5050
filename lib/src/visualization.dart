// VDA 5050 v3.0.0 `visualization` message (mobile robot -> visualization).
//
// Schema: json_schemas/visualization.schema

import 'common.dart';

class Visualization {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  int? referenceStateHeaderId;
  PlannedPath? plannedPath;
  IntermediatePath? intermediatePath;
  MobileRobotPosition? mobileRobotPosition;
  Velocity? velocity;

  Visualization({
    this.headerId,
    this.timestamp,
    this.version,
    this.manufacturer,
    this.serialNumber,
    this.referenceStateHeaderId,
    this.plannedPath,
    this.intermediatePath,
    this.mobileRobotPosition,
    this.velocity,
  });

  Visualization.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    referenceStateHeaderId = json['referenceStateHeaderId'];
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
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'headerId': headerId,
      'timestamp': timestamp,
      'version': version,
      'manufacturer': manufacturer,
      'serialNumber': serialNumber,
      'referenceStateHeaderId': referenceStateHeaderId,
    };
    if (plannedPath != null) data['plannedPath'] = plannedPath!.toJson();
    if (intermediatePath != null) {
      data['intermediatePath'] = intermediatePath!.toJson();
    }
    if (mobileRobotPosition != null) {
      data['mobileRobotPosition'] = mobileRobotPosition!.toJson();
    }
    if (velocity != null) data['velocity'] = velocity!.toJson();
    return data;
  }
}
