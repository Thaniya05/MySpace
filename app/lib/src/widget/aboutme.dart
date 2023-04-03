import 'package:flutter/material.dart';

//default value

const String defaultDetails = "I'am Backend Developer.";
const Color defaultColor = Color(0xff53f6aa);
const double defaultAboutmeSizeText = 30.0;
const double defaultDetailsSizeText = 16.0;
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
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
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
                margin: const EdgeInsets.all(20),
                child: Text(
                  details,
                  style: TextStyle(
                      color: detailsColor,
                      fontSize: detailsSizeText,
                      fontWeight: FontWeight.w100),
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
