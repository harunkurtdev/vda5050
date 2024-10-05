class Connection {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  String? connectionState;

  Connection(
      {this.headerId,
      this.timestamp,
      this.version,
      this.manufacturer,
      this.serialNumber,
      this.connectionState});

  Connection.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    connectionState = json['connectionState'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['headerId'] = this.headerId;
    data['timestamp'] = this.timestamp;
    data['version'] = this.version;
    data['manufacturer'] = this.manufacturer;
    data['serialNumber'] = this.serialNumber;
    data['connectionState'] = this.connectionState;
    return data;
  }
}
