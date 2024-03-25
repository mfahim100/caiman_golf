import 'package:caiman_golf/core/constants/const_colors.dart';
import 'package:caiman_golf/core/constants/const_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: onPressed,
      child: Container(
        height: 6.h,
        width: 90.w,
        decoration: BoxDecoration(
          color: ConstColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(5.w)
        ),
        child: Center(
          child: Text(text,style: ConstTextStyles.buttonText,),
        ),
      ),
    );
  }
}
