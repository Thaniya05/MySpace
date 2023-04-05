import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fastworkdemo/src/widget/aboutme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../widget/game24.dart';
import 'package:google_fonts/google_fonts.dart';

const String test =
    "มีความสนใจและตั้งใจที่จะเป็น Fronend และ Backend Developer พร้อมที่จะเรียนรู้ Language programming และเครื่องมือใหม่ๆ ที่มีความน่าสนใจ หรือสามารถนำมาประยุกต์กับงานอยู่เสมอ";

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    double widthsize = 0.6;
    double detailsize = 20.0;
    if (context.isPhone) {
      widthsize = 0.8;
      detailsize = 16.0;
    } else {
      widthsize = 0.6;
      detailsize = 20.0;
    }
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
                topic: "Project / Work History",
              ),
            ),
            _buildBlank(),
            _buildHistoryWork(
              context,
              widthsize,
              detailsize,
              details: '${test}',
              topic: 'MySpace',
              success: true,
              isfpic: true,
              pathpic: 'assets/pic/profile.jpg',
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildHistorys(
    List<String> _lists,
    BuildContext context,
    double widthsize,
    double detailsize,
  ) {
    List<Widget> _smt = [];

    return _smt;
  }

  Container _buildHistoryWork(
    BuildContext context,
    double widthsize,
    double detailsize, {
    required String topic,
    required String details,
    bool success = false,
    bool progress = false,
    bool coming = false,
    bool alpha = false,
    bool mini = false,
    bool work = false,
    bool isfpic = false,
    String pathpic = "",
  }) {
    return Container(
      width: MediaQuery.of(context).size.width * widthsize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                topic,
                style: TextStyle(fontSize: 30, color: Color(0xff53f6aa)),
              ),
              Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
            ],
          ),
          _buildBlank(5),
          _buildChips(
            success: success,
            progress: progress,
            comingsoon: coming,
            alpha: alpha,
            miniproject: mini,
            work: work,
          ),
          _buildBlank(5),
          Card(
            color: Color.fromARGB(255, 63, 113, 134),
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  _buildBlank(10),
                  AutoSizeText(
                    details,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: detailsize,
                        fontWeight: FontWeight.w200),
                    minFontSize: 16,
                  ),
                  _buildBlank(10),
                  _buildImg(ispic: isfpic, path: pathpic),
                  _buildBlank(15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildImg({bool ispic = false, String path = ''}) {
    if (ispic) {
      return Container(
        child: Image.asset(path),
        height: 200,
        width: 200,
      );
    } else {
      return Container();
    }
  }

  Row _buildChips({
    bool success = false,
    bool progress = false,
    bool comingsoon = false,
    bool alpha = false,
    bool miniproject = false,
    bool work = false,
  }) {
    List<Widget> _list = [];
    if (success) {
      _list.add(_buildSuccessChip());
      _list.add(_buildBlank(2));
    }
    if (progress) {
      _list.add(_buildinProgressChip());
      _list.add(_buildBlank(2));
    }
    if (comingsoon) {
      _list.add(_buildinCommingSoonChip());
      _list.add(_buildBlank(2));
    }
    if (alpha) {
      _list.add(_buildAlphaChip());
      _list.add(_buildBlank(2));
    }
    if (miniproject) {
      _list.add(_buildminiProjectChip());
      _list.add(_buildBlank(2));
    }
    if (work) {
      _list.add(_buildWorkChip());
      _list.add(_buildBlank(2));
    }

    return Row(
      children: _list,
    );
  }

  Chip _buildSuccessChip() {
    return Chip(
      label: Text(
        "Success",
        style: TextStyle(fontSize: 14),
      ),
      elevation: 7.0,
      backgroundColor: Colors.greenAccent,
      padding: EdgeInsets.all(5.0),
    );
  }

  Chip _buildinProgressChip() {
    return Chip(
      label: Text(
        "In progress",
        style: TextStyle(fontSize: 14),
      ),
      elevation: 7.0,
      backgroundColor: Colors.amber,
      padding: EdgeInsets.all(5.0),
    );
  }

  Chip _buildinCommingSoonChip() {
    return Chip(
      label: Text(
        "Coming soon",
        style: TextStyle(fontSize: 14),
      ),
      elevation: 7.0,
      backgroundColor: Colors.lightBlueAccent,
      padding: EdgeInsets.all(5.0),
    );
  }

  Chip _buildAlphaChip() {
    return Chip(
      label: Text(
        "Alpha",
        style: TextStyle(fontSize: 14),
      ),
      elevation: 7.0,
      backgroundColor: Colors.redAccent,
      padding: EdgeInsets.all(5.0),
    );
  }

  Chip _buildminiProjectChip() {
    return Chip(
      label: Text(
        "Mini Project",
        style: TextStyle(fontSize: 14),
      ),
      elevation: 7.0,
      backgroundColor: Colors.orange,
      padding: EdgeInsets.all(5.0),
    );
  }

  Chip _buildWorkChip() {
    return Chip(
      label: Text(
        "Work",
        style: TextStyle(fontSize: 14),
      ),
      elevation: 7.0,
      backgroundColor: Colors.limeAccent,
      padding: EdgeInsets.all(5.0),
    );
  }

  Padding _buildBlank([double d = 20.0]) {
    return Padding(padding: EdgeInsets.all(d));
  }
}

class HistoryJSON {
  late final String topic;
  late final String details;
  bool ispic = false;
  late final String pathpic;
  bool success = false;
  bool progress = false;
  bool coming = false;
  bool alpha = false;
  bool mini = false;
  bool work = false;

  HistoryJSON(this.topic, this.details, this.pathpic, this.ispic, this.success,
      this.progress, this.coming, this.alpha, this.mini, this.work);

  HistoryJSON.fromJson(Map<String, dynamic> json)
      : topic = json['topic'],
        details = json['details'],
        ispic = json['ispic'],
        pathpic = json['pathpic'],
        success = json['success'],
        progress = json['progress'],
        coming = json['coming'],
        alpha = json['alpha'],
        mini = json['mini'],
        work = json['work'];
}
