import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillDetails extends StatelessWidget {
  const SkillDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //color: Colors.red,
        child: Column(
          children: [
            _buildBlank(20.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildtopic(),
                    _buildBlank(),
                    _buildLocation(),
                    _buildBlank(),
                    _buildCard(context)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Center _buildCard(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Container(
          margin: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _builddetails(),
              _buildBlank(10.0),
              _buildPicture(context),
              AutoSizeText(
                "Detailsasdasdasdsadasdasdasdasdasdasdasdasdasdasdasdasdasdasd",
                style: GoogleFonts.sarabun(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                ),
                minFontSize: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildPicture(BuildContext context) {
    return Column(
      children: [
        Center(
          child: AutoSizeText(
            "TopicPic",
            style: GoogleFonts.sarabun(
              fontSize: 30,
              fontWeight: FontWeight.w200,
            ),
            minFontSize: 10,
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/pic/webapp.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                "Skill : ",
                style: GoogleFonts.sarabun(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
                minFontSize: 10,
              ),
              Chip(
                label: Text(
                  "Mini Project",
                  style: GoogleFonts.sarabun(fontSize: 14),
                ),
                elevation: 7.0,
                backgroundColor: Colors.orange,
                padding: EdgeInsets.all(5.0),
              ),
            ],
          ),
        ),
      ],
    );
  }

  AutoSizeText _builddetails() {
    return AutoSizeText(
      "Detailsasdasdasdsadasdasdasdasdasdasdasdasdasdasdasdasdasdasd",
      style: GoogleFonts.sarabun(
        fontSize: 30,
        fontWeight: FontWeight.w200,
      ),
      minFontSize: 10,
    );
  }

  Row _buildLocation() {
    return Row(
      children: [
        FaIcon(FontAwesomeIcons.locationArrow),
        _buildBlank(2.0),
        AutoSizeText(
          "NewNN Co,LTD",
          style: GoogleFonts.sarabun(fontSize: 14),
        ),
        _buildBlank(),
        FaIcon(FontAwesomeIcons.clock),
        _buildBlank(2.0),
        AutoSizeText(
          "NewNN Co,LTD",
          style: GoogleFonts.sarabun(fontSize: 14),
        ),
      ],
    );
  }

  AutoSizeText _buildtopic() {
    return AutoSizeText(
      "Topic",
      style: GoogleFonts.sarabun(
        fontSize: 42,
      ),
    );
  }

  Padding _buildBlank([double d = 5.0]) => Padding(padding: EdgeInsets.all(d));
}
