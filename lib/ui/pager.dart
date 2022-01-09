import 'package:barber_book_app/di/injector.dart';
import 'package:get/get.dart';

class Pager {
  late List<GetPage> pages;

  Pager({
    required final Injector injector,
  }) {
    pages = [
      GetPage(
        name: "/",
        page: injector.getWelcomePage,
      ),
      GetPage(
        name: "/admin",
        page: injector.getLoginPage,
      ),
      GetPage(
        name: "/booking",
        page: injector.getBookingPage,
      )
    ];
  }
}
