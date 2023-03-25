import 'package:fastworkdemo/page/widget/intro.dart';
import 'package:fastworkdemo/page/widget/mainpage.dart';
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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              IntroWidget(),
              Center(
                child: Text('Tab2'),
              ),
              Center(
                child: Text('Tab3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
