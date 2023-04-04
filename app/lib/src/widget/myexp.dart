import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

List<String> _mylist = [
  "ใช้ Javascript , Typescript ,React จัดการเกี่ยวกับการแสดงผลของเว็บทั้งหมด",
  "- ทำ API ไว้ใช้ในการส่งและรับข้อมูลโดยใช้ Typescript , NodeJS , Express",
  "- สร้าง Mobile Application โดยใช้ Blazor โดยทำในส่วนแสดงผล และ การเรียกข้อมูล และส่งข้อมูล",
];

class MyExp extends StatelessWidget {
  const MyExp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          Text(
            'Work Experience',
            style: TextStyle(
                color: Color(0xff53f6aa),
                fontSize: 30,
                fontWeight: FontWeight.w400),
          ),
          _buildBlank(),
          _buildExpCard(context,
              role: "Backend Developer",
              company: "NewNN Company limited",
              timeline: "april 2021 - present",
              list: _mylist),
          Card(
            elevation: 10,
            color: Color.fromARGB(255, 63, 113, 134),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: EdgeInsets.all(20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Web Developer ( intern ) '),
                    Text('NewNN Company limted'),
                    Text('July 2017 - Dec 2017'),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text('-สร้าง Demo Game โดยใช้ Unreal Engine 4'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Card _buildExpCard(BuildContext context,
      {required String role,
      required String company,
      required String timeline,
      required List<String> list}) {
    return Card(
      elevation: 10,
      color: Color.fromARGB(255, 63, 113, 134),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        margin: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                role,
                style: TextStyle(color: Color(0xff53f6aa), fontSize: 24),
              ),
              Text(
                company,
                style: TextStyle(
                    color: Color(0xff53f6aa),
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
              _buildBlank(5.0),
              Text(
                timeline,
                style: TextStyle(color: Colors.amber, fontSize: 10),
              ),
              _buildBlank(10.0),
              _buildExpDetails(list),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildExpDetails(List<String> _list) {
    List<Widget> _texts = [];
    List<Column> _c = [];
    for (var i in _list) {
      _texts.add(Text(i));
    }
    return Column(
      children: <Widget>[..._texts],
    );
  }

  Padding _buildBlank([double d = 20.0]) {
    return Padding(
      padding: EdgeInsets.all(d),
    );
  }
}
