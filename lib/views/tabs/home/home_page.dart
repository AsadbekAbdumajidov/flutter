import 'package:aion/core/components/app_decoration.dart';
import 'package:aion/core/components/app_style.dart';
import 'package:aion/core/components/carusel_slider.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/tabs/home/_widget/page_view_item.dart';
import 'package:aion/views/tabs/home/_widget/tab_bar_item.dart';
import 'package:aion/views/tabs/home/_widget/tab_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: he(45), bottom: he(24)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: he(32),
                    width: wi(290),
                    decoration: AppDecoration
                        .instance.decorationColorTransparentBorderRadiusAll16,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(16)),
                      child: Row(
                        children: [
                          Text("Dogecoin to the Moon ...",
                              style: AppTextStyles.instance.styleW600S12Black),
                          const Spacer(),
                          SvgPicture.asset(AppIcons.instance.icSearch)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: he(32),
                    width: wi(32),
                    child: Image.asset(AppIcons.instance.icNotif),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Latest News",
                    style: AppTextStyles.instance.styleSize18BlackW700),
                Row(
                  children: [
                    Text("See all",
                        style: AppTextStyles.instance.styleW600S12Blue),
                    SizedBox(width: wi(12)),
                    Icon(Icons.arrow_forward,
                        size: he(16), color: AppColors.instance.blue)
                  ],
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: he(16), bottom: he(10)),
                child: const Carusel()),
            SizedBox(
              height: he(40),
              child: TabPageView(
                controller: controller,
                currentIndex: currentIndex,
                onTap1: () {
                  tap(0);
                },
                onTap2: () {
                  tap(1);
                },
                onTap3: () {
                  tap(2);
                },
                ontap4: () {
                  tap(3);
                },
              ),
            ),
            SizedBox(
              height: he(272),
              child: PageView(
                onPageChanged: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                controller: controller,
                children: const <Widget>[
                  PageViewItem(
                      title1: "5 things to know about the 'conundrum' of lupus",
                      title2: "Matt Villano",
                      title3: "Sunday, 9 May 2021"),
                  PageViewItem(
                      title1: "4 ways families can ease anxiety together",
                      title2: "Matt Villano",
                      title3: "Sunday, 9 May 2021"),
                  PageViewItem(
                      title1: "5 things to know about the 'conundrum' of lupus",
                      title2: "Matt Villano",
                      title3: "Sunday, 9 May 2021"),
                  PageViewItem(
                      title1: "5 things to know about the 'conundrum' of lupus",
                      title2: "Matt Villano",
                      title3: "Sunday, 9 May 2021"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  tap(int v) {
    controller.animateToPage(v,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }
}
