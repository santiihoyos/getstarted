import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngenioStrings {
  static const STORE_NAME = "Ingenio Barber";
}

class IngenioColors {
  //note: remember after "0xFF" FF digits are alpha.
  static const primaryColor = Color(0xFFc85100);
  static const backGroundColor = Color(0xFF121212);
  static const surfaceColor = Color(0xFF262626);
  static const accentColor = Color(0xFFCF6679);
  static const textPrimaryColor = Color(0xFFFFFFFF);
}

class IngenioFonts {
  ///Heading01 regular
  static final heading01 = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 32,
      color: IngenioColors.textPrimaryColor,
    ),
  );

  ///Body01 regular
  static final body01 = GoogleFonts.roboto(
    textStyle: const TextStyle(
      fontSize: 13,
      color: IngenioColors.textPrimaryColor,
    ),
  );
}

///Ingenio barber theme
final ingenioBarberThemeData = ThemeData(
  backgroundColor: IngenioColors.backGroundColor,
  primaryColor: IngenioColors.accentColor,
  accentColor: IngenioColors.accentColor,
  buttonColor: IngenioColors.surfaceColor,
  primarySwatch: Colors.blue,
);