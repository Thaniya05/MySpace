import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart' as constant;

List<String> _mylist = [
  "- ใช้ Javascript , Typescript ,React จัดการเกี่ยวกับการแสดงผลของเว็บทั้งหมด",
  "- ทำ API ไว้ใช้ในการส่งและรับข้อมูลโดยใช้ Typescript , NodeJS , Express",
  "- สร้าง Mobile Application โดยใช้ Blazor โดยทำในส่วนแสดงผล และ การเรียกข้อมูล และส่งข้อมูล",
];
double detailssize = 20.0;

class MyExp extends StatelessWidget {
  const MyExp({super.key});

  @override
  Widget build(BuildContext context) {
    double widthsize = 0.6;

    if (context.isPhone) {
      widthsize = 0.8;
      detailssize = 18.0;
    } else {
      widthsize = 0.6;
      detailssize = 20.0;
    }

    return Container(
      width: MediaQuery.of(context).size.width * widthsize,
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
          _buildExpCard(
            context,
            role: constant.EXP_ROLE_1,
            company: constant.EXP_COMPANY_1,
            timeline: constant.EXP_TIMELINE_1,
            list: constant.EXP_LIST_1,
          ),
          _buildBlank(),
          _buildExpCard(
            context,
            role: constant.EXP_ROLE_2,
            company: constant.EXP_COMPANY_2,
            timeline: constant.EXP_TIMELINE_2,
            list: constant.EXP_LIST_2,
          ),
          _buildBlank(),
          _buildExpCard(
            context,
            role: constant.EXP_ROLE_3,
            company: constant.EXP_COMPANY_3,
            timeline: constant.EXP_TIMELINE_3,
            list: constant.EXP_LIST_3,
          ),
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
                    color: Colors.limeAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              _buildBlank(5.0),
              Text(
                timeline,
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 12,
                    fontStyle: FontStyle.italic),
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
      _texts.add(
        Text(
          i,
          style: GoogleFonts.chakraPetch(
            fontSize: detailssize,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      );
      _texts.add(Padding(padding: EdgeInsets.all(5)));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[..._texts],
    );
  }

  Padding _buildBlank([double d = 20.0]) {
    return Padding(
      padding: EdgeInsets.all(d),
    );
  }
}
