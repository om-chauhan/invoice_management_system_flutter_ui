import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Business Exp', percent: 40, color: const Color(0xff0293ee)),
    Data(
        name: 'Wages & Salary Exp',
        percent: 30,
        color: const Color(0xfff8b250)),
    Data(name: 'Office Exp', percent: 15, color: Colors.black),
    Data(name: 'Personal Exp', percent: 15, color: const Color(0xff13d38e)),
  ];
}

class Data {
  final String? name;

  final double? percent;

  final Color? color;

  Data({this.name, this.percent, this.color});
}
