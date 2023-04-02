import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
          Padding(
            padding: EdgeInsets.all(20),
          ),
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
                    Text(
                      'Web Developer ',
                      style: TextStyle(color: Color(0xff53f6aa), fontSize: 24),
                    ),
                    Text(
                      'NewNN Company limted',
                      style: TextStyle(
                          color: Color(0xff53f6aa),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Text(
                      'April 2022 - Present',
                      style: TextStyle(color: Colors.amber, fontSize: 10),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text(
                        '- ใช้ Javascript , Typescript ,React จัดการเกี่ยวกับการแสดงผลของเว็บทั้งหมด'),
                    Text(
                        '- ทำ API ไว้ใช้ในการส่งและรับข้อมูลโดยใช้ Typescript , NodeJS , Express'),
                    Text(
                        '- สร้าง Mobile Application โดยใช้ Blazor โดยทำในส่วนแสดงผล และ การเรียกข้อมูล และส่งข้อมูล'),
                  ],
                ),
              ),
            ),
          ),
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

  Card expCard(BuildContext context, List<String> _list) {
    return Card(
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
              Text('Web Developer '),
              Text('NewNN Company limted'),
              Text('April 2022 - Present'),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                  '- ใช้ Javascript , Typescript ,React จัดการเกี่ยวกับการแสดงผลของเว็บทั้งหมด'),
              Text(
                  '- ทำ API ไว้ใช้ในการส่งและรับข้อมูลโดยใช้ Typescript , NodeJS , Express'),
              Text(
                  '- สร้าง Mobile Application โดยใช้ Blazor โดยทำในส่วนแสดงผล และ การเรียกข้อมูล และส่งข้อมูล'),
            ],
          ),
        ),
      ),
    );
  }
}
