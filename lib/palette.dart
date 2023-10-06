import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor primaryColor = MaterialColor(
    0xff3a8d71, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff347f66), //10%
      100: Color(0xff2e715a), //20%
      200: Color(0xff29634f), //30%
      300: Color(0xff235544), //40%
      400: Color(0xff1d4739), //50%
      500: Color(0xff17382d), //60%
      600: Color(0xff112a22), //70%
      700: Color(0xff0c1c17), //80%
      800: Color(0xff060e0b), //90%
      900: Color(0xff000000), //100%
    },
  );

  static const MaterialColor bgColor =
      MaterialColor(0xffFDF9D9, <int, Color>{});

  static const MaterialColor accentColor =
      MaterialColor(0xff0a2b965, <int, Color>{});

  static const MaterialColor secondaryColor =
      MaterialColor(0xffFF6347, <int, Color>{});
  
}
