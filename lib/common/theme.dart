// Packages
import 'package:flutter/material.dart';

// Common
import 'package:components/common/constants.dart';

ThemeData themeLight = ThemeData.light().copyWith(
  primaryColor: primaryColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(backgroundColor: primaryColor),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: primaryColor),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primaryColor,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: primaryColor),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
  ),
);
