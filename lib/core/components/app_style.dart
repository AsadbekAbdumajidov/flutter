import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static final AppTextStyles _instance = AppTextStyles._inint();
  static AppTextStyles get instance => _instance;
  AppTextStyles._inint();

  TextStyle styleW600S12Black = TextStyle(
      fontSize: he(12),
      color: AppColors.instance.black2,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal);

  TextStyle styleW500S12White = TextStyle(
      fontSize: he(12),
      color: AppColors.instance.white,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal);

  TextStyle styleW600S12Blue = TextStyle(
      fontSize: he(12),
      fontWeight: FontWeight.w600,
      color: AppColors.instance.blue);

  TextStyle styleSize18BlackW700 = TextStyle(
    fontSize: he(18),
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  TextStyle styleWhiteW800Size10 = TextStyle(
      color: AppColors.instance.white,
      fontWeight: FontWeight.w800,
      fontSize: he(10));

  TextStyle styleWhiteW700size16 = TextStyle(
      color: AppColors.instance.white,
      fontWeight: FontWeight.w700,
      fontSize: he(16));

  TextStyle styleWhiteW400size10 = TextStyle(
      color: AppColors.instance.white,
      fontWeight: FontWeight.w400,
      fontSize: he(10));

   TextStyle styleWhiteW600size14 = TextStyle(
      color: AppColors.instance.white,
      fontWeight: FontWeight.w600,
      fontSize: he(14));


  TextStyle styleWhiteW600Size12 = TextStyle(
      color: AppColors.instance.white,
      fontSize: he(12),
      fontWeight: FontWeight.w600);
}
