import 'package:flutter/material.dart';
import 'package:flutter_task2/Core/App_Color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle body({
    double fontSize = 23,
    FontWeight fontWeight = FontWeight.w600,
    Color color = AppColor.colorBlack,
  }) {
    return GoogleFonts.tajawal(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle title({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w500,
    Color color = AppColor.colorBlack,
  }) {
    return GoogleFonts.tajawal(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
