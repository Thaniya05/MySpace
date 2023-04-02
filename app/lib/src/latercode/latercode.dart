import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

SingleChildScrollView testMethod(BuildContext context) {
  return SingleChildScrollView(
    child: Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(50, 20, 50, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      AutoSizeText(
                        'Welcome everyone !!',
                        style: TextStyle(fontSize: 40),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      ),
                      AutoSizeText.rich(
                        TextSpan(
                            style: TextStyle(fontSize: 18),
                            text:
                                'ยินดีต้อนรับเข้าสู่ Website ของผม ผมชื่อปุ๊ก เกิดในปี 1998 ปัจจุบันตอนนี้ทำงานในส่วนเป็น Backend Developer โดยใช้ภาษา Javascript / Typescript โดยจะทำงานเกี่ยวกับสร้าง API เป็นหลัก และมีการใช้ Typescript ทำในส่วนของการแสดงผล HTML รวมไปถึงการใช้ React ในการแสดงผล แต่โดยส่วนตัวแล้ว ชอบการใช้เครื่องมือ Flutter เป็นพิเศษ ซึ่งคุณสามารถดูรายละเอียดเกี่ยวกับประสบการณ์ หรือข้อมูลต่างๆ หรือ แอพที่เคยทำมาในข้างล่างได้เลย'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            ),
            infoFlipCard(context),
          ],
        ),
      ),
    ),
  );
}

FlipCard infoFlipCard(BuildContext context) {
  if (context.isPhone) {
    return FlipCard(
        speed: 800,
        front: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          elevation: 3,
          child: Container(
            padding: EdgeInsets.all(25),
            width: 375,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'MyCard',
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
                ),
                AutoSizeText(
                  'Name : Pook',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                ),
                AutoSizeText(
                  'Birthday : May 1998',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                ),
                AutoSizeText(
                  'Skill : Typescript , HTML , Dart and more ',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                ),
                AutoSizeText(
                  'Framework : NodeJS, Flutter , React',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                ),
                AutoSizeText(
                  'Contact : thaniya14@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        back: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          elevation: 3,
          child: Container(
            padding: EdgeInsets.all(25),
            width: 375,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'MyInfo',
                  style: TextStyle(fontSize: 20),
                ),
                AutoSizeText('Name : Pook'),
              ],
            ),
          ),
        ));
  }
  return FlipCard(
      speed: 1000,
      front: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(25),
          margin: EdgeInsets.all(25),
          width: MediaQuery.of(context).size.width * 0.5,
          height: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'MyCard',
                style: TextStyle(fontSize: 24),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
              ),
              AutoSizeText(
                'Name : Pook',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
              AutoSizeText(
                'Birthday : May 1998',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
              AutoSizeText(
                'Skill : Typescript , HTML , Dart and more ',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
              AutoSizeText(
                'Framework : NodeJS, Flutter , React',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
              AutoSizeText(
                'Contact : thaniya14@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      back: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(25),
          margin: EdgeInsets.all(25),
          width: MediaQuery.of(context).size.width * 0.5,
          height: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'MyInfo',
                style: TextStyle(fontSize: 20),
              ),
              AutoSizeText('Name : Pook'),
            ],
          ),
        ),
      ));
}

Container infoCard(BuildContext context) {
  if (context.isPhone) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(25),
          width: 375,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'MyInfo',
                style: TextStyle(fontSize: 20),
              ),
              AutoSizeText('Name : Pik'),
            ],
          ),
        ),
      ),
    );
  }
  // if not a phone

  return Container(
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      elevation: 3,
      child: FlipCard(
        front: Container(
          padding: EdgeInsets.all(25),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'MyCard',
                style: TextStyle(fontSize: 24),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
              ),
              AutoSizeText(
                'Name : Pook',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
              AutoSizeText(
                'Birthday : May 1998',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
              AutoSizeText(
                'Skill : Typescript , HTML , Dart and more ',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
              AutoSizeText(
                'Framework : NodeJS, Flutter , React',
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
              AutoSizeText(
                'Contact : thaniya14@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        back: Container(
          padding: EdgeInsets.all(25),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              Text('test'),
              Text('test1'),
            ],
          ),
        ),
      ),
    ),
  );
}
