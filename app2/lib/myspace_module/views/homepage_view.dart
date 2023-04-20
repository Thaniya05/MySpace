import 'dart:developer';

import 'package:app2/myspace_module/views/exp_intro_view.dart';
import 'package:app2/myspace_module/views/introduce_view.dart';
import 'package:app2/myspace_module/views/skill_view.dart';
import 'package:app2/myspace_module/views/timeline_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:app2/myspace_module/views/aboutme_view.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    final _con = PageController(initialPage: 3);

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text('Floating Nested SliverAppBar'),
              floating: true,
              expandedHeight: 100.0,
              forceElevated: true,
            ),
          ];
        },
        /*
        body: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              Introduce(),
              Aboutme(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                //color: Colors.red[200],
                child: GestureDetector(
                  child: Text('test'),
                  onTap: () {
                    _controller.animateTo(0,
                        duration: 1000.ms, curve: Curves.easeIn);
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.red[300],
              ),
            ],
          ),
        ),*/
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _con,
          children: [
            Introduce(),
            Aboutme(),
            Timelines(),
            MySkill(),
            IntroExp(),
          ],
        ),
      ),
    );
  }
}
