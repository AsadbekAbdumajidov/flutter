import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _instance = AppColors._inint();
  static AppColors get instance => _instance;
  AppColors._inint();

  Color backGround = const Color(0xFFF5F5F5);
  Color primarColor = const Color(0xFFFF3A44);
  Color black = Colors.black;
  Color black2 = const Color(0xFF818181);
  Color grey = const Color(0xFFE9E9E9);
  Color white = Colors.white;
  Color blue = const Color(0xFF0080FF);
}
