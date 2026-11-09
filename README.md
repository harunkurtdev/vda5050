# vda5050

Dart data models for the **VDA 5050 v3.0.0** interface between mobile robots
(AGV/AMR) and fleet control. Every message maps 1:1 to its JSON Schema and
provides `fromJson` / `toJson` for round-tripping VDA 5050 JSON over MQTT.

## Messages

| Class | Direction | Topic |
|-------|-----------|-------|
| `Order` | fleet → robot | `order` |
| `InstantActions` | fleet → robot | `instantActions` |
| `State` | robot → fleet | `state` |
| `Connection` | broker/robot → fleet | `connection` |
| `Visualization` | robot → viz | `visualization` |
| `Factsheet` | robot → fleet | `factsheet` |
| `ZoneSetMessage` | fleet → robot | `zoneSet` |
| `Responses` | fleet → robot | `responses` |

Shared value types (`Action`, `NodePosition`, `Trajectory`,
`MobileRobotPosition`, `Velocity`, `PowerSupply`, …) live in `src/common.dart`
and are re-exported from the top-level library.

## Usage

```dart
import 'dart:convert';
import 'package:vda5050/vda5050.dart';

// Parse an incoming message.
final order = Order.fromJson(jsonDecode(payload) as Map<String, dynamic>);

// Build and serialize one.
final ack = Connection(
  headerId: 1,
  timestamp: '2025-03-01T12:34:56.789Z',
  version: vda5050Version, // "3.0.0"
  manufacturer: 'ExampleRobotics',
  serialNumber: 'AGV-0001',
  connectionState: 'ONLINE',
);
final wire = jsonEncode(ack.toJson());
```

Enum-valued fields (`blockingType`, `operatingMode`, `connectionState`, …) are
kept as `String` to round-trip unknown/extended values safely; the accepted
values are documented in each field's doc comment.

## Conventions

- Wire JSON keys are **camelCase**, matching the VDA 5050 JSON schemas exactly.
- Optional fields are omitted from `toJson()` when `null`; required fields are
  always emitted.
- Numeric fields are parsed as `double` where the schema says `number`, so an
  integer literal in JSON (`0`) is accepted.

## Reference

- Schemas / spec: `~/nav2_ws/src/VDA5050/json_schemas/*.schema` (tag `3.0.0`).
- Example payloads for every message: [`jsons/`](jsons/).

## Development

```bash
dart pub get
dart analyze
dart test
```
