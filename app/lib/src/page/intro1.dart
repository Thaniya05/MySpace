import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

class Pages extends StatelessWidget {
  final text;
  final color;
  Pages({this.text, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ]),
      ),
    );
  }
}

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
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Hello World',
                    style: TextStyle(
                        color: Color(0xff53f6aa),
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: AnimatedTextKit(
                      pause: Duration(seconds: 0),
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          '_',
                          speed: Duration(milliseconds: 400),
                          textStyle: TextStyle(
                              color: Color(0xff53f6aa),
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Text(
              "Role : Backend Developer",
              style: TextStyle(
                color: Color(0xff53f6aa),
                fontSize: 16,
                fontWeight: FontWeight.w100,
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Text(
              "Status : Interested and Studying Flutter",
              style: TextStyle(
                color: Color(0xff53f6aa),
                fontSize: 16,
                fontWeight: FontWeight.w100,
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.squareJs,
                    color: Color(0xff53f6aa),
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.html5,
                    color: Color(0xff53f6aa),
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.node,
                    color: Color(0xff53f6aa),
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.react,
                    color: Color(0xff53f6aa),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Intro2Page extends StatelessWidget {
  const Intro2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1C4B5F),
      child: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text('My Business Card'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlipCard(
                        front: Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height:
                                  MediaQuery.of(context).size.width * 9 / 16,
                              child: Text('hello'),
                            ),
                          ),
                        ),
                        back: Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height:
                                  MediaQuery.of(context).size.width * 9 / 16,
                              child: Text('Bye'),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
