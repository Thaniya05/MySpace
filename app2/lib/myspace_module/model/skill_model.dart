// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemSchema {
  String name;
  String src;
  Color color;
  List<String> lists;
  ItemSchema(
      {required this.name,
      required this.src,
      required this.color,
      this.lists = const []});
}
