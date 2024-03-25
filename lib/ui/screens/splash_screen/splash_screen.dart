import 'package:caiman_golf/core/constants/const_colors.dart';
import 'package:caiman_golf/core/constants/const_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100.h,
      width: 100.w,
      color: ConstColors.kPrimaryColor,
          child: Center(child: Text('CAIMAN GOLF',style:ConstTextStyles.splashScreenText),
          ),
    );
  }
}
