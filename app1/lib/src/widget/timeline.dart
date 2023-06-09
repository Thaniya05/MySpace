import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';
import '../constant.dart' as constant;

class MyTimeline extends StatelessWidget {
  double timelineFontsize;
  Color topicColor;
  Color backgrondColor;
  Color yearColor;
  Color detailsColor;
  MyTimeline(
      {super.key,
      this.timelineFontsize = 30.0,
      this.topicColor = const Color(0xff53f6aa),
      this.backgrondColor = const Color.fromARGB(255, 63, 113, 134),
      this.yearColor = Colors.amber,
      this.detailsColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    List<dynamic> list = jsonDecode(_json);

    double widthsize = 0.4;
    if (context.isPhone) {
      widthsize = 0.8;
    } else {
      widthsize = 0.4;
    }

    return Container(
        width: MediaQuery.of(context).size.width * widthsize,
        child: Column(
          children: [
            Text(
              "Timeline",
              style: GoogleFonts.sarabun(
                color: topicColor,
                fontSize: timelineFontsize,
                fontWeight: FontWeight.w400,
              ),
            ),
            _buildBlank(),
            Card(
              elevation: 10,
              color: backgrondColor,
              child: Container(
                width: MediaQuery.of(context).size.width * widthsize,
                height: 500,
                child: Timeline.tileBuilder(
                  theme: TimelineThemeData(
                      connectorTheme: ConnectorThemeData(
                        color: topicColor,
                      ),
                      indicatorTheme: IndicatorThemeData(color: topicColor)),
                  builder: TimelineTileBuilder.fromStyle(
                    contentsAlign: ContentsAlign.alternating,
                    contentsBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Text(
                            '${Timelineitem.fromJson(list[index]).month} ${Timelineitem.fromJson(list[index]).year}',
                            style: GoogleFonts.sarabun(color: yearColor),
                          ),
                          Center(
                            child: Text(
                              '${Timelineitem.fromJson(list[index]).details}',
                              style: GoogleFonts.sarabun(
                                color: detailsColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    itemCount: list.length,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Padding _buildBlank([double d = 20.0]) {
    return Padding(
      padding: EdgeInsets.all(d),
    );
  }
}

class Timelineitem {
  final String month;
  final String year;
  final String details;
  final bool ispresent = false;

  Timelineitem(this.month, this.year, this.details);

  Timelineitem.fromJson(Map<String, dynamic> json)
      : month = json['month'],
        year = json['year'],
        details = json['details'];

  Map<String, dynamic> toJson() =>
      {'name': month, 'year': year, 'details': details};
}

String _json = constant.TIMELINE_JSON;
