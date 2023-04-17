import 'dart:math';

import 'package:app2/myspace_module/controller/aboutme_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

double mobilesize = 1100;

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
  /*
  if (Get.width >= 1100) {
    return Web(context, c);
  }
  if (Get.width < 1100 && Get.width >= 650) {
    return Tablet(context, c);
  } else {
    return Mobile(context, c);
  }*/
  if (Get.width >= mobilesize)
    return Web1(context, c);
  else
    return Mobile1(context, c);
}

Container Web1(BuildContext context, AboutMeController c) {
  return Container(
    margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            //  color: Colors.red,
            child: FractionallySizedBox(
                heightFactor: 0.66,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  // color: Colors.red[300],
                  child: Container(
                    padding: EdgeInsets.all(40.0),
                    child: _buildCard(context),
                  ),
                )
                    .animate()
                    .fade(duration: 1500.ms)
                    .slideX(curve: Curves.bounceIn)),
          ),
        ),
        Padding(padding: EdgeInsets.all(70)),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(30.0),
            //color: Colors.blue,
            child: _buildAboutme(
                c, CrossAxisAlignment.center, MainAxisAlignment.center),
          ).animate().fade(delay: 1600.ms, duration: 1000.ms),
        ),
      ],
    ),
  );
}

Container Mobile1(BuildContext context, AboutMeController c) {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 10, 50, 20),
    child: Column(children: [
      Expanded(
        flex: 1,
        child: FractionallySizedBox(
          heightFactor: 0.66,
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            // color: Colors.red[300],
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              // color: Colors.red[300],
              child: _buildCard(context),
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          //color: Colors.red,
          child: Container(
            child: _buildAboutme(
                c, CrossAxisAlignment.start, MainAxisAlignment.start),
          ),
        ),
      ),
    ]),
  );
}

Column _buildAboutme(
    AboutMeController c, CrossAxisAlignment crossAx, MainAxisAlignment mainAx) {
  return Column(
    crossAxisAlignment: crossAx,
    mainAxisAlignment: mainAx,
    children: [
      Center(
        child: Container(
            //color: Colors.amber,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: AutoSizeText(
              "About me",
              style: GoogleFonts.sarabun(
                fontSize: Get.width < mobilesize ? 24 : 40,
              ),
              maxLines: 1,
              minFontSize: 14,
            )),
      ),
      Padding(padding: EdgeInsets.all(Get.width < mobilesize ? 0 : 20)),
      Container(
        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
        //color: Colors.amber,
        child: AutoSizeText(
          c.model.aboutme,
          style: GoogleFonts.sarabun(
            fontSize: Get.width < mobilesize ? 20 : 26,
            fontWeight: FontWeight.w200,
          ),
          maxLines: 9,
          minFontSize: 10,
        ),
      ),
    ],
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
                  focusColor: Colors.amber,
                  highlightColor: Colors.amber,
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: Get.width < 650 ? 16 : 40,
                  ),
                )
                    .animate(
                      onPlay: (controller) => controller.loop(),
                    )
                    .shake(delay: 1000.ms)
                    .tint(color: Colors.amber, duration: 100.ms)
                    .tint(color: Colors.white, duration: 900.ms),
                IconButton(
                  onPressed: null,
                  icon: FaIcon(
                    FontAwesomeIcons.line,
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


/*
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
          //color: Colors.amber,
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
              height: Get.width * 0.20,
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
            child: _buildAboutme(c),
          ),
        )
      ],
    ),
  );
}

Container Web(BuildContext context, AboutMeController c) {
  return Container(
    margin: EdgeInsets.all(50),
    //color: Colors.amber,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.height * 0.5 * (3 / 2),
            child: Container(
              margin: EdgeInsets.all(20),
              child: _buildCard(context),
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: 600,
            height: MediaQuery.of(context).size.height * 0.5,
            margin: EdgeInsets.all(20),
            child: _buildAboutme(c),
          ),
        ),
      ],
    ),
  );
}
*/