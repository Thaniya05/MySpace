import 'package:app2/myspace_module/controller/skill_controller.dart';
import 'package:app2/myspace_module/model/skill_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

double mobilesize = 1100;

class MySkill extends GetWidget<SkillController> {
  const MySkill({super.key});

  @override
  Widget build(BuildContext context) {
    final skillController = Get.put(SkillController());

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            "My Skill",
            style: GoogleFonts.sarabun(fontSize: 24),
          ),
          AutoSizeText(
            "Description",
            style:
                GoogleFonts.sarabun(fontSize: 20, fontWeight: FontWeight.w200),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: Colors.blue,
                child: test(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GridView test() {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => Container(
          color: Colors.amber,
          child: Text("${index}"),
        ),
      ),
    );
  }

  Container _buildMobile(
      BuildContext context, SkillController skillController) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.50,
      child: _buildGrid(skillController),
    );
  }

  Container _buildWeb(BuildContext context, SkillController skillController) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.65,
      child: _buildGrid(skillController),
    );
  }

  _buildGrid(SkillController c) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //default 200
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemCount: c.mylist.length,
      itemBuilder: (context, index) => _buildCard(c.mylist[index]),
    );
  }

  List<Widget> _buildDetailsBackCard(List<String> list) {
    List<Widget> _list = [];

    for (var i = 0; i < list.length; i++) {
      _list.add(
        Container(
          alignment: Alignment.center,
          child: AutoSizeText(
            list[i],
            style: GoogleFonts.sarabun(),
          ),
        ),
      );
    }
    return _list;
  }

  Widget? _buildCard(ItemSchema list) {
    return FlipCard(
      front: Card(
        elevation: 10,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                foregroundDecoration: RotatedCornerDecoration.withColor(
                  badgePosition: BadgePosition.topStart,
                  color: list.color,
                  badgeSize: Size(16, 16),
                ),
                child: SvgPicture.asset(list.src),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Container(
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    "${list.name}",
                    style: GoogleFonts.sarabun(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      back: Card(
        elevation: 10,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                //color: Colors.white,
                alignment: Alignment.center,
                child: AutoSizeText(
                  "${list.name}",
                  style: GoogleFonts.sarabun(),
                ),
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildDetailsBackCard(list.lists),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
