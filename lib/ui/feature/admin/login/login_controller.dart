import 'package:barber_book_app/ui/feature/welcome/welcome_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  var doingLogin = false.obs;

  /// does login....
  Future<bool> doLogin({
    required final String user,
    required final String password,
  }) async {
    print("doing login for $user");
    doingLogin.call(true);
    await Future.delayed(const Duration(seconds: 3));
    doingLogin.call(false);
    return false;
  }

  void onBack() {
    print("naviganting back from admin login...");
    Get.offAndToNamed("/");
  }
}
