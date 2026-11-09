// VDA 5050 v3.0.0 `zoneSet` message (fleet control -> mobile robot).
//
// Schema: json_schemas/zoneSet.schema

import 'common.dart';

class ZoneSetMessage {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  ZoneSet? zoneSet;

  ZoneSetMessage({
    this.headerId,
    this.timestamp,
    this.version,
    this.manufacturer,
    this.serialNumber,
    this.zoneSet,
  });

  ZoneSetMessage.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    zoneSet =
        json['zoneSet'] != null ? ZoneSet.fromJson(json['zoneSet']) : null;
  }

  Map<String, dynamic> toJson() => {
        'headerId': headerId,
        'timestamp': timestamp,
        'version': version,
        'manufacturer': manufacturer,
        'serialNumber': serialNumber,
        if (zoneSet != null) 'zoneSet': zoneSet!.toJson(),
      };
}

class ZoneSet {
  String? mapId;
  String? zoneSetId;
  String? zoneSetDescriptor;
  List<Zone>? zones;

  ZoneSet({this.mapId, this.zoneSetId, this.zoneSetDescriptor, this.zones});

  ZoneSet.fromJson(Map<String, dynamic> json) {
    mapId = json['mapId'];
    zoneSetId = json['zoneSetId'];
    zoneSetDescriptor = json['zoneSetDescriptor'];
    zones = asList(json['zones'], Zone.fromJson);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'mapId': mapId,
      'zoneSetId': zoneSetId,
      'zones': (zones ?? const []).map((e) => e.toJson()).toList(),
    };
    if (zoneSetDescriptor != null) data['zoneSetDescriptor'] = zoneSetDescriptor;
    return data;
  }
}

class Zone {
  String? zoneId;

  /// BLOCKED, LINE_GUIDED, RELEASE, COORDINATED_REPLANNING, SPEED_LIMIT,
  /// ACTION, PRIORITY, PENALTY, DIRECTED or BIDIRECTED.
  String? zoneType;
  String? zoneDescriptor;
  List<Vertex>? vertices;

  Zone({this.zoneId, this.zoneType, this.zoneDescriptor, this.vertices});

  Zone.fromJson(Map<String, dynamic> json) {
    zoneId = json['zoneId'];
    zoneType = json['zoneType'];
    zoneDescriptor = json['zoneDescriptor'];
    vertices = asList(json['vertices'], Vertex.fromJson);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'zoneId': zoneId,
      'zoneType': zoneType,
      'vertices': (vertices ?? const []).map((e) => e.toJson()).toList(),
    };
    if (zoneDescriptor != null) data['zoneDescriptor'] = zoneDescriptor;
    return data;
  }
}
