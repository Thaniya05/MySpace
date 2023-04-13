import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class IntroduceController extends GetxController {
  List<String> logolist = ["assets/svg/flutter.svg", "assets/svg/html-1.svg"];

  final CarouselOptions options = CarouselOptions(
    height: 200,
    aspectRatio: 16 / 9,
    viewportFraction: 0.8,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 3),
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    autoPlayCurve: Curves.fastOutSlowIn,
    enlargeCenterPage: true,
    enlargeFactor: 0.3,
    scrollDirection: Axis.horizontal,
  );
}
