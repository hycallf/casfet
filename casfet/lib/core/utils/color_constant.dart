import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color red900 = fromHex('#a50d0d');

  static Color lightBlue700 = fromHex('#0488d2');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color lightBlue500 = fromHex('#0da8ff');

  static Color black9003f = fromHex('#3f000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color lightBlue900 = fromHex('#14618c');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
