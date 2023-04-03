import 'package:fastworkdemo/src/widget/aboutme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../widget/game24.dart';

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1C4B5F),
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildBlank(),
            Center(
              child: AboutMeWidget(
                topic: "Example Project",
              ),
            ),
            _buildBlank(),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "test",
                        style:
                            TextStyle(fontSize: 30, color: Color(0xff53f6aa)),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                      Chip(
                        label: Text(
                          "test",
                          style: TextStyle(fontSize: 14),
                        ),
                        elevation: 7.0,
                        backgroundColor: Colors.amber,
                        padding: EdgeInsets.all(5.0),
                      )
                    ],
                  ),
                  _buildBlank(5),
                  Card(
                    color: Color.fromARGB(255, 63, 113, 134),
                    elevation: 5,
                    child: Container(
                      child: Column(
                        children: [
                          _buildBlank(10),
                          Text("testadasdasdasd"),
                          _buildBlank(10),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            //color: Colors.blue[100],
                            child: Image.asset(
                              'assets/pic/profile.jpg',
                              height: 200,
                              width: 200,
                            ),
                          ),
                          _buildBlank(15),
                          GametwentyfourDemoWidget()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _buildBlank([double d = 20.0]) {
    return Padding(padding: EdgeInsets.all(d));
  }
}
