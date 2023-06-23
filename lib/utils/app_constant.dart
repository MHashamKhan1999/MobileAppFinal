import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: camel_case_types
class AppConstant{
  static Color bgColor = const  Color(0xFFF9FAFA);
  static Color textColor = const Color(0xFF000000);
  static Color whiteColor = const   Color(0xFFFFFFFF);
  static Color blueButtonBg = const Color(0xFF2C75A8);
  static Color dirtyBlue = const  Color(0xFF2c75a8);
  static Color greenButtonBg =  const Color(0xFF27E608);
  static Color redButtonBg = const Color(0xFFFD0000);
  static Color blueColor = const Color(0xFF087CE6);
  static Color darkBlueColor = const Color(0xFF171D32);
  static Color greyColor = const Color(0xFFDCDCDC);
  static Color checkBoxColor = const Color(0xFF868585);

  static TextStyle headlineTextStyle16 = GoogleFonts.openSans(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: textColor));
  static TextStyle headlineTextStyle16Normal = GoogleFonts.openSans(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: textColor));
  static TextStyle headlineTextStyle18 = GoogleFonts.openSans(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: whiteColor));
  static TextStyle headlineTextStyle20 = GoogleFonts.openSans(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: textColor));

}