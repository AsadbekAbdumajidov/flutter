import 'package:aion/core/components/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  const PageViewItem(
      {Key? key,
      required this.title1,
      required this.title2,
      required this.title3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        padding: EdgeInsets.symmetric(vertical: he(5)),
        itemBuilder: (_, __) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: he(5),horizontal: wi(5)),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: "https://source.unsplash.com/random/$__",
                    height: he(128),
                    width: context.w,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: wi(16), vertical: he(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(title1,
                          style: AppTextStyles.instance.styleWhiteW600size14),
                      SizedBox(height: he(60)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(title2,
                              style:
                                  AppTextStyles.instance.styleWhiteW600Size12),
                          Text(title3,
                              style:
                                  AppTextStyles.instance.styleWhiteW600Size12),
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            ),
          );
        });
  }
}
