import 'package:caiman_golf/core/constants/const_textstyles.dart';
import 'package:caiman_golf/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/const_colors.dart';

class PlayTab extends StatelessWidget {
  const PlayTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
        child: Container(
         height: 60.h,
          width: 100.w,
         decoration: BoxDecoration(
           color: Colors.white54.withOpacity(0.1),
           borderRadius: BorderRadius.circular(04.w)
         ),
          child: Column(
            children: [
              SizedBox(height:1.h,),

              Text('Round Setup',style: ConstTextStyles.roundSetup,),

              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Player Name',style: ConstTextStyles.player,)),


              SizedBox(
                height: 12.h,
                width: 99.w,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24.w,
                      child: CircleAvatar(
                        radius: 09.w,
                        backgroundImage: const AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.5.h,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Muhammad Fahimm',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '3423',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp,
                                  color: ConstColors.kPrimaryColor
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: 14.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.w),
                          border: Border.all(color: Colors.green)),
                      child: Column(
                        children: [

                          SizedBox(height: 1.5.h,),
                          Text(
                            'Select T',
                            style: GoogleFonts.poppins(
                                fontSize: 13.5.sp,
                                fontWeight: FontWeight.bold,
                                color: ConstColors.kPrimaryColor),
                          ),
                          Text(
                            'Free',
                            style: GoogleFonts.poppins(
                                fontSize: 13.5.sp,
                                fontWeight: FontWeight.bold,
                                color: ConstColors.kPrimaryColor),
                          ),
                        ],
                      ),
                    ),





                  ],
                ),
              ),


              SizedBox(
                height: 6.h,
                width: 100.w,
                child: Padding(
                  padding:  EdgeInsets.all(0.5.w),
                  child: Row(
                    children: [
                      const Column(
                        children: [
                          Image(image: AssetImage('assets/images/flag.png'),),
                        ],
                      ),


                      SizedBox(width: 3.w,),

                      Column(
                        children: [
                          Text('HighLand Fairways Golf Club',style: ConstTextStyles.highland,),
                          Text('White,  2256 yards (54.0/90)',style: ConstTextStyles.highlandWhite,),

                        ],
                      ),

                      SizedBox(width: 4.w,),


                      SizedBox(
                        width: 10.w,
                        child: const Column(
                          children: [
                            Icon(Icons.edit_note),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 5.h,),

              SizedBox(
                height: 16.h,
                width: 40.w,
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/startButton.png'),
                ),
              ),

              SizedBox(height: 4.h,),
              
              SizedBox(
                  width: 50.w,
                  height: 4.h,
                  child: CustomButton(text: 'EditRound', onPressed: (){}))

            ],
          ),
        ),
      ),
    );
  }
}
