import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MySkill extends StatelessWidget {
  const MySkill({super.key});

  @override
  Widget build(BuildContext context) {
    double widthsize = 0.6;

    if (context.isPhone) {
      widthsize = 0.8;
    } else {
      widthsize = 0.6;
    }

    return Container(
      width: MediaQuery.of(context).size.width * widthsize,
      child: Column(
        children: [
          Text(
            'Skills',
            style: TextStyle(
                color: Color(0xff53f6aa),
                fontSize: 30,
                fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: EdgeInsets.all(20),
          ),
          Card(
            elevation: 10,
            color: Color.fromARGB(255, 63, 113, 134),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: EdgeInsets.all(50),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSkillname('Typescript / Javascript'),
                    _buildBlank(5),
                    _buildSkillindi(1),
                    _buildBlank(),
                    _buildSkillname('HTML / React'),
                    _buildBlank(5),
                    _buildSkillindi(0.9),
                    _buildBlank(),
                    _buildSkillname('Flutter / Dart'),
                    _buildBlank(5),
                    _buildSkillindi(0.8),
                    _buildBlank(),
                    _buildSkillname('C#'),
                    _buildBlank(5),
                    _buildSkillindi(0.7),
                    _buildBlank(),
                    _buildSkillname('Java / C / Microcontroller'),
                    _buildBlank(5),
                    _buildSkillindi(0.7),
                    _buildBlank(),
                    _buildSkillname('Python / Java'),
                    _buildBlank(5),
                    _buildSkillindi(0.67),
                    _buildBlank(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  LinearProgressIndicator _buildSkillindi(double d) {
    return LinearProgressIndicator(
      value: d,
      semanticsLabel: 'Linear progress indicator',
      minHeight: 7,
      color: Colors.amber,
      backgroundColor: Color.fromARGB(255, 201, 198, 198),
    );
  }

  Row _buildSkillname(String str) {
    return Row(
      children: [
        Text(
          str,
          style: TextStyle(
              color: Color(0xff53f6aa),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Padding _buildBlank([double d = 20.0]) => Padding(padding: EdgeInsets.all(d));
}
