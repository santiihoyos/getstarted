import 'package:model/data/response/booking_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'booking_api.g.dart';

@RestApi()
abstract class BookingApi {

  factory BookingApi(Dio dio, {String baseUrl}) = _BookingApi;

  @GET("/bookings")
  Future<BookingsResponse> getBookings(
        @Query("page") int page,
        @Query("pageSize") int pageSize,
      );
}