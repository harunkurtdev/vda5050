// src/instantaction.dart
class InstantAction {
  int? headerId;
  String? timestamp;
  String? version;
  String? manufacturer;
  String? serialNumber;
  List<Actions>? actions;

  InstantAction(
      {this.headerId,
      this.timestamp,
      this.version,
      this.manufacturer,
      this.serialNumber,
      this.actions});

  InstantAction.fromJson(Map<String, dynamic> json) {
    headerId = json['headerId'];
    timestamp = json['timestamp'];
    version = json['version'];
    manufacturer = json['manufacturer'];
    serialNumber = json['serialNumber'];
    if (json['actions'] != null) {
      actions = <Actions>[];
      json['actions'].forEach((v) {
        actions!.add(new Actions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['headerId'] = this.headerId;
    data['timestamp'] = this.timestamp;
    data['version'] = this.version;
    data['manufacturer'] = this.manufacturer;
    data['serialNumber'] = this.serialNumber;
    if (this.actions != null) {
      data['actions'] = this.actions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Actions {
  String? actionId;
  String? actionType;
  String? blockingType;
  String? actionDescription;
  List<ActionParameters>? actionParameters;

  Actions(
      {this.actionId,
      this.actionType,
      this.blockingType,
      this.actionDescription,
      this.actionParameters});

  Actions.fromJson(Map<String, dynamic> json) {
    actionId = json['actionId'];
    actionType = json['actionType'];
    blockingType = json['blockingType'];
    actionDescription = json['actionDescription'];
    if (json['actionParameters'] != null) {
      actionParameters = <ActionParameters>[];
      json['actionParameters'].forEach((v) {
        actionParameters!.add(new ActionParameters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actionId'] = this.actionId;
    data['actionType'] = this.actionType;
    data['blockingType'] = this.blockingType;
    data['actionDescription'] = this.actionDescription;
    if (this.actionParameters != null) {
      data['actionParameters'] =
          this.actionParameters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ActionParameters {
  String? key;
  bool? value;

  ActionParameters({this.key, this.value});

  ActionParameters.fromJson(Map<String, dynamic> json) {
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
