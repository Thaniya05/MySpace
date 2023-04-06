import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant.dart' as constant;

//default value

//const String Details = constant.ABOUTME_DETAIL;

const String defaultDetails = "";
const Color defaultColor = Color(0xff53f6aa);
const double defaultAboutmeSizeText = 30.0;
const double defaultDetailsSizeText = 20.0;
const Color defaultColorDetails = Colors.white;
const Color defaultColorBgCard = Color.fromARGB(255, 63, 113, 134);

class AboutMeWidget extends StatelessWidget {
  double aboutmeSizeText;
  String details;
  Color aboutmeColor;
  double detailsSizeText;
  Color detailsColor;
  Color backgroundCardColor;
  String topic;

  AboutMeWidget(
      {super.key,
      this.aboutmeSizeText = defaultAboutmeSizeText,
      this.details = defaultDetails,
      this.aboutmeColor = defaultColor,
      this.detailsSizeText = defaultDetailsSizeText,
      this.detailsColor = defaultColorDetails,
      this.backgroundCardColor = defaultColorBgCard,
      this.topic = "About me"});

  @override
  Widget build(BuildContext context) {
    double widthSize = 0.6;
    if (context.isPhone) {
      widthSize = 0.8;
      detailsSizeText = 16.0;
    } else {
      widthSize = 0.6;
      detailsSizeText = defaultDetailsSizeText;
    }
    return Container(
      width: MediaQuery.of(context).size.width * widthSize,
      //color: Colors.white,
      child: Column(
        children: [
          Text(
            topic,
            style: TextStyle(
                color: aboutmeColor,
                fontSize: aboutmeSizeText,
                fontWeight: FontWeight.w400),
          ),
          _buildBlank(),
          Card(
            color: backgroundCardColor,
            elevation: 5,
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(40),
                child: AutoSizeText(
                  details,
                  style: TextStyle(
                      color: detailsColor,
                      fontSize: detailsSizeText,
                      fontWeight: FontWeight.w100),
                  minFontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding _buildBlank([double d = 20.0]) => Padding(padding: EdgeInsets.all(d));
}
