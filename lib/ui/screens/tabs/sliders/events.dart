import 'package:caiman_golf/core/constants/const_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 100.w,
      child: Column(
        children: [

          SizedBox(height: 28.h,),

          Text('Events Screen',style: ConstTextStyles.registerText,),
        ],
      ),
    );
  }
}
