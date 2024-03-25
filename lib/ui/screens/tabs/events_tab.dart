import 'package:caiman_golf/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EventsTab extends StatelessWidget {
  const EventsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              SizedBox(height: 3.h,),

              Container(

                height: 4.h,
                child: Padding(
                  padding:  EdgeInsets.only(left: 4.w,right: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 45.w,
                          child:  Text('CAIMAN',style: GoogleFonts.poppins(
                            fontSize:20.sp,
                            color:ConstColors.kPrimaryColor
                          ),)),

                      SizedBox(
                        width: 45.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                width: 10.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black
                                  ),
                                  borderRadius: BorderRadius.circular(25.w)
                                ),
                                child: Icon(Icons.add,size: 20.sp,),
                            ),
                            SizedBox(
                                width: 10.w,
                                height: 4.h,
                                child: Icon(Icons.menu,size: 20.sp,),
                            ),



                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
