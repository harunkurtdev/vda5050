/// Dart data models for the **VDA 5050 v3.0.0** interface between mobile
/// robots (AGV/AMR) and fleet control.
///
/// Every message maps 1:1 to its JSON Schema in
/// `~/nav2_ws/src/VDA5050/json_schemas/*.schema`. Each class exposes a
/// `fromJson(Map<String, dynamic>)` constructor and a `toJson()` method, so a
/// message round-trips through `dart:convert`:
///
/// ```dart
/// import 'dart:convert';
/// import 'package:vda5050/vda5050.dart';
///
/// final order = Order.fromJson(jsonDecode(payload));
/// final wire = jsonEncode(order.toJson());
/// ```
library;

export 'src/common.dart';
export 'src/order.dart';
export 'src/instant_actions.dart';
export 'src/state.dart';
export 'src/connection.dart';
export 'src/visualization.dart';
export 'src/factsheet.dart';
export 'src/zone_set.dart';
export 'src/responses.dart';
