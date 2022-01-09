import 'package:barber_book_app/data/booking_api.dart';
import 'package:get/get.dart';
import 'package:model/entity/booking.dart';

class BookingController extends GetxController {

  final BookingApi _api;

  /// page size
  static var pageSize = 10.obs;

  /// current bookings
  var bookings = List<Booking>.empty().obs;

  /// current page
  var page = 0;

  BookingController(this._api);

  /// return next requested bookings with
  /// applied filters.
  Future<List<Booking>>? getBookings() async {
    final response = await _api.getBookings(page, pageSize.value);
    page++;
    return Future.value(response.bookings);
  }
}