import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data {
  final String? title;
  final String? description;
  final String? image;
  final IconData? iconData;

  Data({this.title, this.description, this.iconData, this.image});
}
final List<Data> myData = [
  Data(
      title: "Screen 1",
      description: "this is screen one in my programme",
      iconData: Icons.accessible_outlined,
      image: "assets/images/s5.jpg"),
  Data(
      title: "Screen 2",
      description: "this is screen two in my programme",
      iconData: Icons.person,
      image: "assets/images/s6.jpg"),
  Data(
      title: "Screen 3",
      description: "this is screen three in my programme",
      iconData: Icons.all_inclusive,
      image: "assets/images/s7.jpg"),
  Data(
      title: "Screen 4",
      description: "this is screen four in my programme",
      iconData: Icons.ac_unit,
      image: "assets/images/s4.jpg"),
];