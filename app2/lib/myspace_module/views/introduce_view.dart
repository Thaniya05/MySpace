import 'package:app2/myspace_module/controller/introduce_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Introduce extends GetView<IntroduceController> {
  const Introduce({super.key});

  @override
  Widget build(BuildContext context) {
    final introController = Get.put(IntroduceController());
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 100,
      color: Colors.amber,
      child: context.isPhone ? Mobile() : Web(introController),
    );
  }
}

Container Mobile() {
  return Container();
}

Container Web(IntroduceController introController) {
  return Container(
    margin: const EdgeInsets.fromLTRB(100, 100, 100, 100),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: _buildSlide(introController),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Hello World',
                    maxLines: 1,
                    minFontSize: 12,
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: AnimatedTextKit(
                      pause: const Duration(seconds: 0),
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          '_',
                          speed: const Duration(milliseconds: 400),
                          textStyle: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Text('dsdasdasdasdasd'),
            ],
          ),
        )
      ],
    ),
  );
}

CarouselSlider _buildSlide(IntroduceController introController) {
  return CarouselSlider(
    items: _listSlide(introController),
    options: introController.options,
  );
}

List<Widget> _listSlide(IntroduceController introController) {
  return introController.logolist
      .map(
        (e) => Container(
          child: SvgPicture.asset(
            e,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.3),
              BlendMode.modulate,
            ),
          ),
        ),
      )
      .toList();
}
