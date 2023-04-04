import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Center(
              child: AutoSizeText(
                'Welcome to MySpace',
                style: TextStyle(fontSize: 50),
                minFontSize: 24,
                maxLines: 1,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: AutoSizeText(
                'Everything you want to know about me can see in the below',
                style: TextStyle(fontSize: 24),
                minFontSize: 14,
                maxLines: 1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.17,
                  child: ElevatedButton(
                    child: AutoSizeText(
                      'About me',
                      maxFontSize: double.infinity,
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                    onPressed: null,
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 30)),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.17,
                  child: ElevatedButton(
                    child: AutoSizeText(
                      'My Skill',
                      maxFontSize: double.infinity,
                      minFontSize: 9,
                      maxLines: 1,
                    ),
                    onPressed: null,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 30)),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.17,
                  child: ElevatedButton(
                    child: AutoSizeText(
                      'Experience',
                      maxFontSize: double.infinity,
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                    onPressed: null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
