import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (GetPlatform.isMobile) {
      return SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.blue[200],
          child: Column(
            children: [
              descriptionMethod(),
              themechangeMethod(context),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text('My Business Card'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlipCard(
                          front: Container(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.width * 9 / 16,
                                child: Text('hello'),
                              ),
                            ),
                          ),
                          back: Container(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.width * 9 / 16,
                                child: Text('Bye'),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Text('it web');
  }

  FlipCard flipcard1Method(BuildContext context) {
    return FlipCard(
      front: Container(
        padding: EdgeInsets.all(20),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
        ),
      ),
      back: Container(
        padding: EdgeInsets.all(20),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
        ),
      ),
    );
  }

  Card themechangeMethod(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Text(
              'Theme',
              style: TextStyle(fontSize: 20),
            ),
            Padding(padding: EdgeInsets.all(3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.purple, shape: BoxShape.circle),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent, shape: BoxShape.circle),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container descriptionMethod() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Welcome',
            style: TextStyle(fontSize: 32),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Text(
            'description',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: EdgeInsets.all(20),
          ),
          Container(
            height: 55,
            width: 100,
            child: ElevatedButton(
              child: Text('Button'),
              onPressed: null,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }
}
