import 'package:auto_size_text/auto_size_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width_size = 0.45;
    double name_card_size = 30.0;
    double role_card_size = 26.0;
    double detail_card_size = 16.0;
    if (context.isPhone || context.width < 895) {
      width_size = 0.9;
      name_card_size = 18.0;
      role_card_size = 16.0;
      detail_card_size = 10.0;
    } else {
      print(context.width);
      width_size = 0.45;
      name_card_size = 30.0;
      role_card_size = 26.0;
      detail_card_size = 16.0;
    }

    return _buildCard(
        context, width_size, name_card_size, role_card_size, detail_card_size);
  }

  Card _buildCard1(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 63, 113, 134),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  Card _buildCard(BuildContext context, double width_size,
      double name_card_size, double role_card_size, double detail_card_size) {
    return Card(
      color: Color.fromARGB(255, 63, 113, 134),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * width_size,
        height: MediaQuery.of(context).size.width * width_size / 1.6,
        child: Container(
          margin: EdgeInsets.all(20),
          //color: Colors.white,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  //color: Colors.blue[100],
                  child: Image.asset(
                    'assets/pic/profile.jpg',
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  //color: Colors.amber,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    //color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          'Thaniya boonbutra',
                          style: TextStyle(
                              color: Color(0xff53f6aa),
                              fontSize: name_card_size,
                              fontWeight: FontWeight.w400),
                          minFontSize: 18.0,
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          'Backend Developer',
                          style: TextStyle(
                              color: Color(0xff53f6aa),
                              fontSize: role_card_size,
                              fontWeight: FontWeight.w300),
                          minFontSize: 16.0,
                          maxLines: 1,
                        ),
                        Padding(padding: EdgeInsets.all(3)),
                        Divider(
                          color: Colors.amber,
                          thickness: 2.0,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Center(
                          child: detailCardMethod(
                            FontAwesomeIcons.envelope,
                            'thaniya14@gmail.com',
                            detail_card_size,
                          ),
                        ),
                        detailCardMethod(
                          FontAwesomeIcons.linkedin,
                          'Thaniya Boonbutra',
                          detail_card_size,
                        ),
                        detailCardMethod(
                          FontAwesomeIcons.locationPin,
                          'Khonkaen , Thailand',
                          detail_card_size,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row detailCardMethod(IconData icon, String str, double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: null,
          icon: FaIcon(
            icon,
            color: Color(0xff53f6aa),
          ),
        ),
        AutoSizeText(
          str,
          style: TextStyle(
            color: Color(0xff53f6aa),
            fontWeight: FontWeight.w400,
          ),
          minFontSize: 10.0,
        ),
      ],
    );
  }

  Widget mySkillIcon(IconData icon) {
    return IconButton(
      onPressed: null,
      icon: FaIcon(
        icon,
        color: Color(0xff53f6aa),
      ),
    );
  }
}



   /*
    return FlipCard(
      front: Container(
        child: _buildCard(context, width_size, name_card_size, role_card_size, detail_card_size),
      ),
      back: Container(
        child: Card(
          color: Color.fromARGB(255, 63, 113, 134),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 9 / 16,
            child: Container(
              margin: EdgeInsets.all(20),
              //color: Colors.white,
              child: Column(
                children: [
                  Text('Skill / Experience'),
                  Text('Main'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      mySkillIcon(FontAwesomeIcons.html5),
                      mySkillIcon(FontAwesomeIcons.nodeJs),
                      mySkillIcon(Icons.flutter_dash),
                      mySkillIcon(FontAwesomeIcons.js),
                      mySkillIcon(FontAwesomeIcons.react)
                    ],
                  ),
                  Text('sub'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  */