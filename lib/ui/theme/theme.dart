import 'dart:ui';

import 'package:barber_book_app/ui/theme/ingenio/ingenio_barber_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

ThemeData getAppTheme() => ingenioBarberThemeData;

ThemeData getThemeOf(final BuildContext context) => Theme.of(context);

AppLocalizations getAppLocalizationsOf(final BuildContext context) {
  final found = AppLocalizations.of(context);
  if (found == null) {
    throw Exception("Trying to get AppLocalizations "
        "but is not initialized in current context.");
  }
  return found;
}
