import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class MyTimeline extends StatelessWidget {
  const MyTimeline({super.key});

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
                height: 400,
                child: Timeline.tileBuilder(
                  theme: TimelineThemeData(
                      connectorTheme: ConnectorThemeData(
                        color: Color(0xff53f6aa),
                      ),
                      indicatorTheme:
                          IndicatorThemeData(color: Color(0xff53f6aa))),
                  builder: TimelineTileBuilder.fromStyle(
                    contentsAlign: ContentsAlign.alternating,
                    contentsBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Text(
                            '${Timelineitem.fromJson(list[index]).month} ${Timelineitem.fromJson(list[index]).year}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${Timelineitem.fromJson(list[index]).details}',
                            style: TextStyle(
                              color: Colors.white,
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
