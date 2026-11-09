// VDA 5050 v3.0.0 `connection` message (broker/robot -> fleet control).
//
// Schema: json_schemas/connection.schema

class Connection {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;

  /// ONLINE, OFFLINE, HIBERNATING or CONNECTION_BROKEN.
  String? connectionState;

  Connection({
    this.headerId,
    this.timestamp,
    this.version,
    this.manufacturer,
    this.serialNumber,
    this.connectionState,
  });

  Connection.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    connectionState = json['connectionState'];
  }

  Map<String, dynamic> toJson() => {
        'headerId': headerId,
        'timestamp': timestamp,
        'version': version,
        'manufacturer': manufacturer,
        'serialNumber': serialNumber,
        'connectionState': connectionState,
      };
}
