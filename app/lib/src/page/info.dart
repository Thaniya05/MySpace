import 'package:fastworkdemo/src/widget/aboutme.dart';
import 'package:fastworkdemo/src/widget/myskill.dart';
import 'package:fastworkdemo/src/widget/timeline.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/mycard.dart';
import '../widget/myexp.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Color(0xff1C4B5F),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
            ),
            MyCard(),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            AboutMeWidget(),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            MyTimeline(),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            MyExp(),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            MySkill(),
          ],
        ),
      ),
    );
  }
}
