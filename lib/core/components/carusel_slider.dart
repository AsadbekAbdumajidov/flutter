
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/components/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_countdown/slide_countdown.dart';

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
              Container(
                height: he(171),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.instance.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                 ),
             ],
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          height: he(171),
          enlargeCenterPage: true,
          autoPlayCurve: Curves.linear,
          autoPlayInterval: const Duration(seconds: 30),
        ),
      ),
    );
  }
}
