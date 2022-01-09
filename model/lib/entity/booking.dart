import 'package:json_annotation/json_annotation.dart';
import 'package:drift/drift.dart';

part 'booking.g.dart';

@JsonSerializable()
class Booking extends Table {
  String name;
  String description;
  DateTime startDataTime;

  Booking({
    required this.name,
    required this.description,
    required this.startDataTime,
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  Map<String, dynamic> toJson() => _$BookingToJson(this);
}
