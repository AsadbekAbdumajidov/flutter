import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/tabs/home/_widget/tab_bar_item.dart';
import 'package:flutter/material.dart';

// appbar widget
class TabPageView extends StatelessWidget implements PreferredSizeWidget {
  const TabPageView(
      {Key? key,
      required this.controller,
      required this.currentIndex,
      required this.onTap1,
      required this.onTap2,
      required this.onTap3,
      required this.ontap4})
      : super(key: key);

  final PageController controller;
  final int currentIndex;
  final Function() onTap1;
  final Function() onTap2;
  final Function() onTap3;
  final Function() ontap4;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: wi(10)),
      scrollDirection: Axis.horizontal,
      children: [
        TabBarItemWidget(
          onTap: onTap1,
          title: 'Helthy',
          isActive: currentIndex == 0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(16)),
          child: TabBarItemWidget(
            onTap: onTap2,
            title: 'Technology',
            isActive: currentIndex == 1,
          ),
        ),
        TabBarItemWidget(
          onTap: onTap3,
          title: 'Finance',
          isActive: currentIndex == 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(16)),
          child: TabBarItemWidget(
            onTap: ontap4,
            title: 'Arts',
            isActive: currentIndex == 3,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
