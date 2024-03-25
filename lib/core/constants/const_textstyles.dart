import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'const_colors.dart';

class ConstTextStyles {

  static var splashScreenText =  GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: 29.sp,
      decoration: TextDecoration.none,
      color: ConstColors.whiteColor
  );



  ///Sign Up Screen Styles ...

  static var registerText =  GoogleFonts.poppins(
      fontSize: 21.5.sp,
      decoration: TextDecoration.none,
      color: Colors.black
  );

  static var enterDetails =  GoogleFonts.poppins(
      fontSize: 14.sp,
      decoration: TextDecoration.none,
      color: Colors.black
  );





  ///Button Styles
  static var buttonText =  GoogleFonts.poppins(
      fontSize: 18.sp,
      decoration: TextDecoration.none,
      color: Colors.white
  );


  static var textButtonStyle =  GoogleFonts.poppins(
      fontSize: 16.sp,
      decoration: TextDecoration.underline,
      color: ConstColors.kPrimaryColor,
    decorationColor: ConstColors.kPrimaryColor,

  );


}