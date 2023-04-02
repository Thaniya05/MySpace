import 'package:flutter/material.dart';

String test =
    "ข้อความที่ยาวมากๆ แต่ไม่รู้จะยาวแค่ไหนก็เลยว่าจะลองว่ามันยาวจริงมั้ย เค สรุปจริง";

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      //color: Colors.white,
      child: Column(
        children: [
          Text(
            "About me",
            style: TextStyle(
                color: Color(0xff53f6aa),
                fontSize: 30,
                fontWeight: FontWeight.w400),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Card(
            color: Color.fromARGB(255, 63, 113, 134),
            elevation: 5,
            child: Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  test,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
