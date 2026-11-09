// VDA 5050 v3.0.0 `instantActions` message (fleet control -> mobile robot).
//
// Schema: json_schemas/instantActions.schema

import 'common.dart';

class InstantActions {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  List<Action>? actions;

  InstantActions({
    this.headerId,
    this.timestamp,
    this.version,
    this.manufacturer,
    this.serialNumber,
    this.actions,
  });

  InstantActions.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    actions = asList(json['actions'], Action.fromJson);
  }

  Map<String, dynamic> toJson() => {
        'headerId': headerId,
        'timestamp': timestamp,
        'version': version,
        'manufacturer': manufacturer,
        'serialNumber': serialNumber,
        'actions': (actions ?? const []).map((e) => e.toJson()).toList(),
      };
}
