import 'package:app2/myspace_module/model/skill_model.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:get/get.dart";
import 'package:flutter/material.dart';

class SkillController extends GetxController {
  List<ItemSchema> mylist = [
    //dummy API
    ItemSchema(
      name: "Flutter",
      src: "assets/svg/typescript1.svg",
      color: Color.fromARGB(255, 62, 173, 127),
      crossAx: 2,
      mainAx: 2,
    ),
    ItemSchema(
      name: "Flutter",
      src: "assets/svg/react1.svg",
      color: Color.fromARGB(255, 17, 57, 65),
      lists: ["work 1", "work2"],
      crossAx: 2,
      mainAx: 1,
    ),
    ItemSchema(
      name: "Flutter",
      src: "assets/svg/css1.svg",
      color: Color.fromARGB(255, 228, 147, 217),
      lists: ["work 1", "work2"],
      crossAx: 1,
      mainAx: 1,
    ),
    ItemSchema(
      name: "Flutter",
      src: "assets/svg/flutter1.svg",
      color: Color.fromARGB(255, 93, 103, 112),
      lists: ["work 1", "work2"],
      crossAx: 1,
      mainAx: 1,
    ),
    ItemSchema(
      name: "Flutter",
      src: "assets/svg/dart1.svg",
      color: Color.fromARGB(255, 173, 240, 206),
      lists: ["work 1", "work2"],
      crossAx: 1,
      mainAx: 1,
    ),
    ItemSchema(
        name: "Flutter",
        src: "assets/svg/nodejs1.svg",
        color: Color.fromARGB(255, 203, 221, 236),
        lists: ["work 1", "work2"],
        crossAx: 1,
        mainAx: 1),
    ItemSchema(
      name: "Flutter",
      src: "assets/svg/html1.svg",
      color: Color.fromARGB(255, 191, 216, 121),
      lists: ["work 1", "work2"],
      crossAx: 2,
      mainAx: 2,
    ),
    ItemSchema(
      name: "Flutter",
      src: "assets/svg/mongo1.svg",
      color: Color.fromARGB(255, 236, 169, 186),
      lists: ["work 1", "work2"],
      crossAx: 2,
      mainAx: 1,
    ),
  ];

  List<Widget> getListGrid() {
    List<Widget> _list = [];

    for (var item in mylist) {
      _list.add(
        StaggeredGridTile.count(
          crossAxisCellCount: item.crossAx,
          mainAxisCellCount: item.mainAx,
          child: FlipCard(
            front: Card(
              elevation: 10,
              color: item.color,
              //color: Colors.amber,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  item.src,
                ),
              ),
            ),
            back: Card(
              elevation: 10,
            ),
          ),
        ),
      );
    }
    return _list;
  }
}
