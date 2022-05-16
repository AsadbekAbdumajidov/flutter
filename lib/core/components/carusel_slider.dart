import 'package:aion/core/components/app_decoration.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/components/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carusel extends StatefulWidget {
  final String? region;
  const Carusel({Key? key, this.region}) : super(key: key);

  @override
  _CaruselState createState() => _CaruselState();
}

const defaultDuration = Duration(days: 1, hours: 15, minutes: 30);

class _CaruselState extends State<Carusel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
        itemCount: 9,
        itemBuilder: (_, __, pagev) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                child: CachedNetworkImage(
                  imageUrl: "https://source.unsplash.com/random/$__",
                  width: context.w,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: wi(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("by Ryan Browne",
                        style: AppTextStyles.instance.styleWhiteW800Size10),
                    Padding(
                      padding: EdgeInsets.only(top: he(8), bottom: he(35)),
                      child: Text(
                          "Crypto investors should \nprepared to lose all their money, \nBOE governor says",
                          style: AppTextStyles.instance.styleWhiteW700size16),
                    ),
                    Text(
                      "“I’m going to say this very bluntly again,” he added. \n“Buy them only if you’re prepared to lose all your money.",
                      style: AppTextStyles.instance.styleWhiteW400size10,
                    ),
                    SizedBox(height: he(10),)
                  ],
                ),
              ))
            ],
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          height: he(241),
          enlargeCenterPage: true,
          autoPlayCurve: Curves.linear,
          autoPlayInterval: const Duration(seconds: 8),
        ),
      ),
    );
  }
}
