import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Constants {
  static final ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: grey,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: grey,
      ),
    ),
    fontFamily: 'Lota Grotesque',
    useMaterial3: true,
  );

  static const Color orange = Color(0xFFFF8000);
  static const Color green = Color(0xFF00E054);
  static const Color blue = Color(0xFF40BCF4);
  static const Color grey = Color(0xFF445565);
  static const Color dark = Color(0xFF181C1F);
}
