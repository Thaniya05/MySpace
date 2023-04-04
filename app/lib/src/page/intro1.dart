import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:getwidget/getwidget.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    if (GetPlatform.isMobile) {
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
          )
        ],
      );
    }
    return const Placeholder();
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
  const Intro1Page({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1C4B5F),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHelloWorld(),
            _buildBlank(),
            _buildRole("Backend developer"),
            _buildBlank(),
            _buildStatus("Interested and Studying Flutter"),
            _buildBlank(),
            _buildIconRow(_datalist),
            _buildBlank(),
          ],
        ),
      ),
    );
  }

  Row _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 3,
          color: Colors.redAccent,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text('About Me'),
          ),
        ),
        Card(
          elevation: 3,
          color: Colors.redAccent,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text('About Me'),
          ),
        )
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

  Text _buildStatus(String status,
      [double fontsize = 16.0, Color color_ = const Color(0xff53f6aa)]) {
    return Text(
      "Status : $status",
      style: TextStyle(
        color: color_,
        fontSize: fontsize,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  Text _buildRole(String role,
      [double fontsize = 16.0, Color color_ = const Color(0xff53f6aa)]) {
    return Text(
      "Role : $role",
      style: TextStyle(
        color: color_,
        fontSize: fontsize,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  Padding _buildBlank() => const Padding(padding: EdgeInsets.all(5));

  Container _buildHelloWorld(
      {double fontsize = 30.0, Color color_ = const Color(0xff53f6aa)}) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Hello World',
            style: TextStyle(
                color: color_, fontSize: fontsize, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 30,
            height: 30,
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
