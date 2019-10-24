import 'package:flutter/material.dart';

class GSYColors {

  static const int primaryValue = 0xFF24292E;
  static const int primaryLightValue = 0xFF42464b;
  static const int primaryDarkValue = 0xFF121917;

  static const int cardWhite = 0xFFFFFFFF;
  static const int textWhite = 0xFFFFFFFF;
  static const int miWhite = 0xffececec;
  static const int white = 0xFFFFFFFF;
  static const int actionBlue = 0xff267aff;
  static const int subTextColor = 0xff959595;
  static const int subLightTextColor = 0xffc4c4c4;


  static const MaterialColor primarySwatch = const MaterialColor(
    primaryValue,
    const <int, Color>{
      50: const Color(primaryLightValue),
      100: const Color(primaryLightValue),
      200: const Color(primaryLightValue),
      300: const Color(primaryLightValue),
      400: const Color(primaryLightValue),
      500: const Color(primaryValue),
      600: const Color(primaryDarkValue),
      700: const Color(primaryDarkValue),
      800: const Color(primaryDarkValue),
      900: const Color(primaryDarkValue),
    },
  );

}

class GSYIcons {
  static const String FONT_FAMILY = 'wxcIconFont';


  static const String DEFAULT_USER_ICON = 'static/images/login.png';

  static const IconData LOGIN_USER = const IconData(0xe666, fontFamily: GSYIcons.FONT_FAMILY);
  static const IconData LOGIN_PW = const IconData(0xe60e, fontFamily: GSYIcons.FONT_FAMILY);
}