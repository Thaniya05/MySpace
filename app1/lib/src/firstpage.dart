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
import './controller/tabcontroller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FirstPageTabController _mytab = Get.put(FirstPageTabController());
    final _theme = Theme.of(context);
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
              color: _theme.textTheme.headlineLarge!.color,
            ),
          ),
          backgroundColor: _theme.appBarTheme.backgroundColor,
          bottom: TabBar(
            controller: _mytab.controller,
            unselectedLabelColor: _theme.tabBarTheme.unselectedLabelColor,
            indicatorColor: _theme.tabBarTheme.indicatorColor,
            tabs: _mytab.myTabs,
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            controller: _mytab.controller,
            children: [
              InfoPage(),
              IntroPage(controller: _mytab.controller),
              MyProject(),
            ],
          ),
        ),
      ),
    );
  }
}
