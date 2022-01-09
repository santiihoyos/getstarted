// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      name: json['name'] as String,
      description: json['description'] as String,
      startDataTime: DateTime.parse(json['startDataTime'] as String),
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'startDataTime': instance.startDataTime.toIso8601String(),
    };
