import 'package:fastworkdemo/src/page/info.dart';
import 'package:fastworkdemo/src/page/intro1.dart';
import 'package:fastworkdemo/src/page/myproject.dart';
import 'package:fastworkdemo/src/widget/intro.dart';
import 'package:fastworkdemo/src/widget/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './widget/appbar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flip_card/flip_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My Space",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff53f6aa),
            ),
          ),
          backgroundColor: Color(0xff1C4B5F),
          bottom: TabBar(
            unselectedLabelColor: Color.fromARGB(255, 213, 213, 213),
            indicatorColor: Colors.amber,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Color(0xff53f6aa),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Color(0xff53f6aa),
                ),
              ),
              Tab(
                icon: Icon(Icons.home, color: Color(0xff53f6aa)),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              InfoPage(),
              IntroPage(),
              MyProject(),
            ],
          ),
        ),
      ),
    );
  }
}
