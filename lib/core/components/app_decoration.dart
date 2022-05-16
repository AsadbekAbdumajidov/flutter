import 'package:aion/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static final AppDecoration _instance = AppDecoration._inint();
  static AppDecoration get instance => _instance;
  AppDecoration._inint();

  BoxDecoration decorationColorTransparentBorderRadiusAll16 = BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: AppColors.instance.black2.withOpacity(0.6),
    ),
  );

  BoxDecoration decorationWhiteRadius15 = BoxDecoration(
    color: AppColors.instance.white,
    borderRadius: const BorderRadius.all(Radius.circular(15)),
  );

  BoxDecoration decorationPrimaryRadiusAll16 = BoxDecoration(
      color: AppColors.instance.primarColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 7,
          offset: const Offset(0, 5),
        ),
      ],
      borderRadius: const BorderRadius.all(Radius.circular(22)));
}
