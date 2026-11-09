// VDA 5050 v3.0.0 `responses` message (fleet control -> mobile robot).
//
// Schema: json_schemas/responses.schema

import 'common.dart';

class Responses {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  List<Response>? responses;

  Responses({
    this.headerId,
    this.timestamp,
    this.version,
    this.manufacturer,
    this.serialNumber,
    this.responses,
  });

  Responses.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    responses = asList(json['responses'], Response.fromJson);
  }

  Map<String, dynamic> toJson() => {
        'headerId': headerId,
        'timestamp': timestamp,
        'version': version,
        'manufacturer': manufacturer,
        'serialNumber': serialNumber,
        'responses': (responses ?? const []).map((e) => e.toJson()).toList(),
      };
}

class Response {
  String? requestId;

  /// GRANTED, QUEUED, REVOKED or REJECTED.
  String? grantType;

  /// ISO 8601 lease expiry, present only with grants.
  String? leaseExpiry;

  Response({this.requestId, this.grantType, this.leaseExpiry});

  Response.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    grantType = json['grantType'];
    leaseExpiry = json['leaseExpiry'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'requestId': requestId,
      'grantType': grantType,
    };
    if (leaseExpiry != null) data['leaseExpiry'] = leaseExpiry;
    return data;
  }
}
