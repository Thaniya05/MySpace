import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Container(
        child: Card(
          color: Color.fromARGB(255, 63, 113, 134),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 9 / 16,
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
                        height: 500,
                        width: 500,
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Thaniya boonbutra',
                              style: TextStyle(
                                  color: Color(0xff53f6aa),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Backend Developer',
                              style: TextStyle(
                                  color: Color(0xff53f6aa),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            detailCardMethod(FontAwesomeIcons.envelope,
                                'thaniya14@gmail.com'),
                            detailCardMethod(
                                FontAwesomeIcons.linkedin, 'Thaniya Boonbutra'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
  }

  Row detailCardMethod(IconData icon, String str) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: null,
          icon: FaIcon(
            icon,
            color: Color(0xff53f6aa),
          ),
        ),
        Text(
          str,
          style: TextStyle(
              color: Color(0xff53f6aa),
              fontSize: 10,
              fontWeight: FontWeight.w400),
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
