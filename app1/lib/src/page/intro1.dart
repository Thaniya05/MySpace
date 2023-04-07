import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:getwidget/getwidget.dart';
import '../constant.dart' as constant;

class IntroPage extends StatelessWidget {
  final TabController controller;
  const IntroPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    if (context.isPhone) {
      //print("is mobile");
      return CarouselSlider(
        options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          scrollDirection: Axis.vertical,
          enableInfiniteScroll: false,
          // autoPlay: false,
        ),
        items: [
          Intro1Page(
            text: 'Hello World',
            controller: controller,
          )
        ],
      );
    } else {
      //print("is web");
      return CarouselSlider(
        options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          scrollDirection: Axis.vertical,
          enableInfiniteScroll: false,
          // autoPlay: false,
        ),
        items: [
          Intro1Page(
            text: 'Hello World',
            controller: controller,
          )
        ],
      );
    }
  }
}

//data JSON
List<IconData> _datalist = [
  FontAwesomeIcons.squareJs,
  FontAwesomeIcons.html5,
  FontAwesomeIcons.node,
  FontAwesomeIcons.react
];

class Intro1Page extends StatelessWidget {
  final text;
  final color;
  final TabController controller;
  const Intro1Page({this.text, this.color, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1C4B5F),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHelloWorld(context),
            _buildBlank(),
            _buildRole(constant.INTRO_ROLE, context),
            _buildBlank(),
            _buildStatus(constant.INTRO_STATUS, context),
            _buildBlank(),
            _buildIconRow(constant.INTRO_ICONS_LIST),
            _buildBlank(10.0),
            _buildButtonRow(),
          ],
        ),
      ),
    );
  }

  Row _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            controller.animateTo(0);
          },
          child: Card(
            elevation: 10,
            color: Color.fromARGB(255, 63, 113, 134),
            child: Container(
              width: 120,
              height: 60,
              child: Center(
                child: Text(
                  'About Me',
                  style: GoogleFonts.sarabun(
                    color: const Color(0xff53f6aa),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
        _buildBlank(10),
        GestureDetector(
          onTap: () {
            controller.animateTo(2);
          },
          child: Card(
            elevation: 10,
            color: Color.fromARGB(255, 63, 113, 134),
            child: Container(
              width: 120,
              height: 60,
              child: Center(
                child: Text(
                  'Work History',
                  style: GoogleFonts.sarabun(
                    color: const Color(0xff53f6aa),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row _buildIconRow(List<IconData> iconlist) {
    List<Row> line = [];
    List<Widget> l = [];
    for (var s in iconlist) {
      l.add(_buildIcon(s));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[...l],
    );
  }

  IconButton _buildIcon(IconData icon_,
      [Color color = const Color(0xff53f6aa), size]) {
    return IconButton(
      onPressed: null,
      icon: FaIcon(
        icon_,
        color: color,
      ),
    );
  }

  Text _buildStatus(String status, BuildContext context,
      [double fontsize = 24.0, Color color_ = const Color(0xff53f6aa)]) {
    if (context.isPhone) {
      fontsize = 16.0;
    }
    return Text(
      "Status : $status",
      style: TextStyle(
        color: color_,
        fontSize: fontsize,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  Text _buildRole(String role, BuildContext context,
      [double fontsize = 24.0, Color color_ = const Color(0xff53f6aa)]) {
    if (context.isPhone) {
      fontsize = 16.0;
    }
    return Text(
      "Role : $role",
      style: TextStyle(
        color: color_,
        fontSize: fontsize,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  Padding _buildBlank([double d = 5.0]) {
    return Padding(padding: EdgeInsets.all(d));
  }

  Container _buildHelloWorld(BuildContext context,
      {double fontsize = 45.0, Color color_ = const Color(0xff53f6aa)}) {
    if (context.isPhone) {
      fontsize = 30.0;
    }

    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AutoSizeText(
            'Hello World',
            style: TextStyle(
              color: color_,
              fontSize: fontsize,
              fontWeight: FontWeight.w400,
            ),
            minFontSize: 30.0,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            width: fontsize,
            height: fontsize,
            child: AnimatedTextKit(
              pause: const Duration(seconds: 0),
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  '_',
                  speed: const Duration(milliseconds: 400),
                  textStyle: TextStyle(
                      color: color_,
                      fontSize: fontsize,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
