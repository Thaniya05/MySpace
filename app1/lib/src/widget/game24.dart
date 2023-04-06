import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';
import 'package:collection/collection.dart';

class GametwentyfourDemoWidget extends StatelessWidget {
  const GametwentyfourDemoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(Game24Controller());
    _controller._init();
    return Container(
      child: Column(
        children: [
          Text("Make 24"),
          Obx(() => Text("${_controller.str}")),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 3,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: GestureDetector(
                      onTap: () {
                        _controller._buttononclick(0);
                      },
                      child: Obx(
                          () => Center(child: Text("${_controller._button1}"))),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: GestureDetector(
                      onTap: () {
                        _controller._buttononclick(1);
                      },
                      child: Obx(
                          () => Center(child: Text("${_controller._button2}"))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 3,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: GestureDetector(
                      onTap: () {
                        _controller._buttononclick(2);
                      },
                      child: Obx(
                          () => Center(child: Text("${_controller._button3}"))),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: GestureDetector(
                      onTap: () {
                        _controller._buttononclick(3);
                      },
                      child: Obx(
                          () => Center(child: Text("${_controller._button4}"))),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Game24Controller extends GetxController {
  var str = ''.obs;
  var count = 1.obs;
  var oparation = 0.obs;
  var _button1 = '+'.obs;
  var _button2 = '-'.obs;
  var _button3 = '*'.obs;
  var _button4 = '/'.obs;
  var _isnumberOnClick = [true, true, true, true].obs;
  var _isNumberPhase = true.obs;

  List<int> problem = [];

  _init() {
    problem = [];
    _isnumberOnClick.value = [true, true, true, true];
    str.value = '';
    List<int> random_4;
    int test = 0;
    Random random = new Random();
    random_4 = getList(4, [1, 2, 3, 4]);
    //problem = getList(4, _exampledata[random.nextInt(6)]);

    test = random.nextInt(6);
    problem = _exampledata[test];
    _button1.value = _exampledata[test][random_4[0] - 1].toString();
    _button2.value = _exampledata[test][random_4[1] - 1].toString();
    _button3.value = _exampledata[test][random_4[2] - 1].toString();
    _button4.value = _exampledata[test][random_4[3] - 1].toString();
  }

  _buttononclick(int i) {
    if (_isNumberPhase.value) {
      if (i == 0) str.value += _button1.value;
      if (i == 1) str.value += _button2.value;
      if (i == 2) str.value += _button3.value;
      if (i == 3) str.value += _button4.value;

      _isnumberOnClick[i] = false;
    } else {
      if (i == 0) str.value += '+';
      if (i == 1) str.value += '-';
      if (i == 2) str.value += '*';
      if (i == 3) str.value += '/';
    }
    _isNumberPhase.value = !_isNumberPhase.value;
    _changeState();
  }

  _changeState() {
    if (_isNumberPhase.value) {
      _button1.value = problem[0].toString();
      _button2.value = problem[1].toString();
      _button3.value = problem[2].toString();
      _button4.value = problem[3].toString();
    } else {
      _button1.value = '+';
      _button2.value = '-';
      _button3.value = '*';
      _button4.value = '/';
    }
  }

//dummy Data
  final List<List<int>> _exampledata = [
    [1, 2, 3, 4],
    [3, 2, 4, 1],
    [6, 3, 2, 4],
    [2, 4, 2, 7],
    [9, 6, 4, 2],
    [5, 3, 2, 6],
  ];

  List<int> getList(int n, List<int> source) => source.sample(n);
}
