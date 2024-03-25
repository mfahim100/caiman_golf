


import 'package:flutter/material.dart';

class ConstColors  {

  static HexColor colorOrange = HexColor('#4fda5f');
  static HexColor colorGray = HexColor('#373A36');

  static var kPrimaryColor = const Color(0xff6FCF23);
  static var whiteColor = const Color(0xffFFFFFF);


  static var homeBackgroundMenu = const Color(0xff474A99);



  static Color colorLabelColor= const Color(0xFF172CE0);
  static Color bottomNavigationBarBackgroundColor=kPrimaryColor ;
  static Color activeNavigationBarColor= colorOrange;
  static Color notActiveNavigationBarColor=Colors.white ;
  static Color shadowNavigationBarColor=colorOrange;


}



class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}