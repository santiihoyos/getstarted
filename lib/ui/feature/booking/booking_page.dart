import 'package:barber_book_app/ui/feature/booking/booking_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:model/entity/booking.dart';

class BookingPage extends StatefulWidget {
  final BookingController bookingController;

  final DateTime _currentDay = DateTime.now();

  BookingPage({
    Key? key,
    required this.bookingController,
  }) : super(key: key);

  @override
  State createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  List<Booking>? _bookings;

  @override
  void initState() {
    initController();
    super.initState();
  }

  void initController() async {
    _bookings = await widget.bookingController.getBookings();
    print(_bookings);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => Text("${widget.bookingController.bookings}"),
    )
    );
  }
}
