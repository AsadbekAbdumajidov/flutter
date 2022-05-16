import 'package:aion/core/components/app_style.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class TabBarItemWidget extends StatelessWidget {
  const TabBarItemWidget({
    Key? key,
    required this.title,
    required this.onTap,
    required this.isActive,
  }) : super(key: key);

  final String title;
  final Function() onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        onTap: onTap,
        child: Container(
          height: he(30),
          padding: EdgeInsets.symmetric(vertical: he(12)),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: isActive
                  ? const Border()
                  : Border.all(
                      width: 0.5,
                      color: AppColors.instance.black2.withOpacity(0.3)),
              color: isActive
                  ? AppColors.instance.primarColor
                  : AppColors.instance.white),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: wi(14)),
            child: Center(
              child: Text(
                title,
                style: AppTextStyles.instance.styleW600S12Black.copyWith(
                    color: isActive
                        ? AppColors.instance.white
                        : AppColors.instance.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
