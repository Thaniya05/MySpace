import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Introduce extends StatelessWidget {
  const Introduce({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.amber,
      child: context.isPhone ? Mobile() : Web(),
    );
  }
}

Container Mobile() {
  return Container();
}

Container Web() {
  return Container(
    margin: EdgeInsets.all(100),
    color: Colors.blue,
  );
}
