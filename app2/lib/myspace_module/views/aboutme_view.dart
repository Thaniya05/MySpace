import 'package:app2/myspace_module/controller/aboutme_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

double mobilesize = 820;

class Aboutme extends GetWidget<AboutMeController> {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    final introController = Get.put(AboutMeController());

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: deviceSize(context, introController),
    );
  }
}

Container deviceSize(BuildContext context, AboutMeController c) {
  if (Get.width >= 1100) {
    return Web(context, c);
  }
  if (Get.width < 1100 && Get.width >= 650) {
    return Tablet(context, c);
  } else {
    return Mobile(context, c);
  }
}

Container Tablet(BuildContext context, AboutMeController c) {
  return Container(
    margin: EdgeInsets.all(50),
    child: Column(
      children: [
        Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.amber,
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.01,
              margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
              padding: EdgeInsets.all(5),
              child: _buildCard(context),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        )
      ],
    ),
  );
}

Container Mobile(BuildContext context, AboutMeController c) {
  return Container(
    margin: EdgeInsets.all(50),
    child: Column(
      children: [
        Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.amber,
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
              padding: EdgeInsets.all(5),
              child: _buildCard(context),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(30)),
        Card(
          elevation: 10,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  //color: Colors.amber,
                  margin: EdgeInsets.all(10),
                  child: AutoSizeText(
                    "About me",
                    style: GoogleFonts.sarabun(fontSize: 24),
                    maxLines: 1,
                    minFontSize: 14,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  //color: Colors.amber,
                  child: AutoSizeText(
                    c.model.aboutme,
                    style: GoogleFonts.sarabun(
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                    ),
                    maxLines: 9,
                    minFontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Container Web(BuildContext context, AboutMeController c) {
  return Container(
    margin: const EdgeInsets.all(50),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.amber,
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                color: Colors.amber,
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(20),
                width: 320,
                child: _buildCard(context),
              ),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(40.0)),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(20),
            color: Colors.amber,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                margin: EdgeInsets.all(100.0),
                color: Colors.red,
                child: _buildAboutme(context, c),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
        ),
      ],
    ),
  );
}

Container _buildAboutme(BuildContext context, AboutMeController c) {
  return Container(
    //color: Colors.amber,
    padding: EdgeInsets.all(20.0),
    child: Container(
      padding: EdgeInsets.all(40.0),
      //color: Colors.red,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            'About me',
            maxLines: 1,
            minFontSize: 12,
            style: GoogleFonts.sarabun(fontSize: Get.width < 650 ? 24 : 40),
          ),
          Padding(padding: EdgeInsets.all(Get.width < 650 ? 0 : 40)),
          AutoSizeText(
            '${c.model.aboutme}',
            minFontSize: 8,
            style: GoogleFonts.sarabun(
              fontSize: Get.width < 650 ? 12 : 24,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    ),
  );
}

Row _buildCard(BuildContext context) {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Image.asset('assets/pic/profile.jpg'),
      ),
      Padding(padding: EdgeInsets.all(15.0)),
      Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: AutoSizeText(
                'Thaniya Boonbutra',
                maxLines: 1,
                maxFontSize: 40,
                minFontSize: 6,
                style: GoogleFonts.sarabun(fontSize: 40),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: AutoSizeText(
                'Backend Developer',
                maxLines: 1,
                maxFontSize: 32,
                minFontSize: 4,
                style: GoogleFonts.sarabun(fontSize: 32),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.all(Get.width < 650 ? 0 : 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: Get.width < 650 ? 16 : 40,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: Get.width < 650 ? 16 : 40,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: Get.width < 650 ? 16 : 40,
                  ),
                ),
              ],
            )
          ],
        ),
      )
    ],
  );
}
