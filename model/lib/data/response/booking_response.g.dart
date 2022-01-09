// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingsResponse _$BookingsResponseFromJson(Map<String, dynamic> json) =>
    BookingsResponse(
      bookings: (json['bookings'] as List<dynamic>)
          .map((e) => Booking.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPage: json['nextPage'] as int,
      totalBookings: json['totalBookings'] as int,
    );

Map<String, dynamic> _$BookingsResponseToJson(BookingsResponse instance) =>
    <String, dynamic>{
      'nextPage': instance.nextPage,
      'bookings': instance.bookings,
      'totalBookings': instance.totalBookings,
    };
