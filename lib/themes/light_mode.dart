import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      background: const Color.fromARGB(255, 236, 248, 249),
      primary: const Color.fromARGB(255, 208, 218, 220),
      secondary: const Color.fromARGB(255, 202, 207, 208),
      tertiary: Colors.white,
      inversePrimary: Colors.grey.shade900),
);