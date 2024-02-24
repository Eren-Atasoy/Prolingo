import 'package:flutter/material.dart';

enum IconConstants {
  companyIcon('company_logo'),
  worldIcon('world_logo'),
  appIcon('app_logo');

  final String value;
  // ignore: sort_constructors_first
  const IconConstants(this.value);
  String get toPng => 'assets/icon/ic_$value.png';
  String get toJpg => 'assets/icon/ic_$value.jpg';
  Image get toImage => Image.asset(toPng);
}
