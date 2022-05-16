
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/tabs/home/_widget/page_view_item.dart';
import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return SizedBox(
      height: he(272),
      child: PageView(
        controller: controller,
        children: const <Widget>[
          PageViewItem(
              title1: "5 things to know about the 'conundrum' of lupus",
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
    );
  }
}
