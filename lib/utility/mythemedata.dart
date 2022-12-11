import 'package:flutter/material.dart';

class MythemeData {
  static Color primiaryColor =  Color(0xffB7935F);
  static Color accentColor = Color(0xff242424);

  static Color primiaryColorDark = Color(0xff141A2E);
  static Color accentColorDark = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primiaryColor,
      accentColor: accentColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primiaryColor,
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )),
      textTheme: TextTheme(
          bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: primiaryColor,
      ),
        bodyText2: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: primiaryColor,
      )));

  static ThemeData darkTheme = ThemeData(
      primaryColor: primiaryColor,
      accentColor: accentColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: accentColorDark,
      ),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
      textTheme: const TextTheme());
}
