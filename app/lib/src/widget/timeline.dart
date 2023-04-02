import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

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

    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [
            Text(
              "Timeline",
              style: TextStyle(
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
                width: MediaQuery.of(context).size.width * 0.7,
                height: 400,
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
                            style: TextStyle(color: yearColor),
                          ),
                          Text(
                            '${Timelineitem.fromJson(list[index]).details}',
                            style: TextStyle(
                              color: detailsColor,
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

String _json =
    '[{"month" : "feb" , "year" : "2022" , "details" : "Work with "},{"month" : "feb" , "year" : "2022" , "details" : "Work with "}]';
