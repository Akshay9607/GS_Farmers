import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7008e = fromHex('#8effffff');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color black90084 = fromHex('#84000000');

  static Color lightGreen100 = fromHex('#d3ffd0');

  static Color green90001 = fromHex('#1d6504');

  static Color green900 = fromHex('#285430');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color redA700 = fromHex('#ee0303');

  static Color orange100 = fromHex('#e5d9b6');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
