import 'package:json_annotation/json_annotation.dart';
import '../../entity/booking.dart';

part 'booking_response.g.dart';

@JsonSerializable()
class BookingsResponse {
  ///0- means end
  ///-1 - nothing to return
  ///other -> next page.
  final int nextPage;

  ///current showed bookings
  final List<Booking> bookings;

  /// total bookings reported by server
  final int totalBookings;

  BookingsResponse({
    required this.bookings,
    required this.nextPage,
    required this.totalBookings,
  });

  factory BookingsResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BookingsResponseToJson(this);
}
