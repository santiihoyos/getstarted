import 'dart:ui';

import 'package:barber_book_app/base/service/url_service.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class UrlServiceCommonImpl extends UrlService {
  @override
  Future<bool> openUrl(String urlString,
      {bool? forceSafariVC,
      bool forceWebView = false,
      bool enableJavaScript = false,
      bool enableDomStorage = false,
      bool universalLinksOnly = false,
      Map<String, String> headers = const <String, String>{},
      Brightness? statusBarBrightness,
      String? webOnlyWindowName}) async {
    print("Opening: $urlString");
    if (await url_launcher.canLaunch(urlString)) {
      return url_launcher.launch(urlString,
          forceSafariVC: forceSafariVC,
          forceWebView: forceWebView,
          enableJavaScript: enableJavaScript,
          enableDomStorage: enableDomStorage,
          universalLinksOnly: universalLinksOnly,
          headers: headers,
          statusBarBrightness: statusBarBrightness,
          webOnlyWindowName: webOnlyWindowName);
    } else {
      return Future.value(false);
    }
  }
}
