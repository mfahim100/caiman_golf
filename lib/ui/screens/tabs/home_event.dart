
import 'package:caiman_golf/ui/screens/tabs/sliders/events.dart';
import 'package:caiman_golf/ui/screens/tabs/sliders/events_history.dart';
import 'package:caiman_golf/ui/widgets/my_profile_listtile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/const_colors.dart';

class HomeEvent extends StatefulWidget {

   const HomeEvent({super.key});

  @override
  State<HomeEvent> createState() => _HomeEventState();
}

class _HomeEventState extends State<HomeEvent> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 90.h,
          width: 100.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  height: 4.h,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 45.w,
                            child: Text(
                              'CAIMAN',
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp,
                                  color: ConstColors.kPrimaryColor),
                            )),
                        SizedBox(
                          width: 45.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
            
                              SizedBox(
                                width: 10.w,
                                height: 4.h,
                                child: Icon(
                                  Icons.menu,
                                  size: 20.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                const MyProfileListTile(
                  avatarLink: 'avatarLink',
                  name: 'Muhammad Fahim',
                  points: '300 Points of last match',
                ),
            
            
                Container(
                  height: 80.h,
                 decoration: BoxDecoration(
                   color: Colors.red.withOpacity(0.1),
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(05.w),
                     topRight: Radius.circular(05.w),
                   ),
                 ),
                  child: Column(
                    children: [
                      SizedBox(height: 1.h,),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
            
                          SizedBox(width: 3.w,),
            
                          Container(
                            decoration: BoxDecoration(
                              border:  Border(
            
                                  bottom: BorderSide(
                                      width: 1.5.w,
                                      color: _value == 0 ? ConstColors.kPrimaryColor :Colors.grey.withOpacity(0.1),)
                              ),
                            ),
                            width: 45.w,
                            height: 4.h,
                            child:  Center(
                              child: Text('Events',style: GoogleFonts.poppins(color: Colors.black,fontSize:15.sp),),
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Container(
                            decoration: BoxDecoration(
                              border:  Border(
                                  bottom: BorderSide(
                                      width: 1.5.w,
                                      color: _value == 1 ? ConstColors.kPrimaryColor :Colors.grey.withOpacity(0.1))
                              ),
                            ),
                            width: 45.w,
                            height: 4.h,
                            child:  Center(
                              child: Text('History',style: GoogleFonts.poppins(color: Colors.black,fontSize:15.sp),),
                            ),
                          ),
            
                        ],
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          onPageChanged: (index,_){
                            setState(() {
                              _value = index;
                            });
                          },
                          viewportFraction:1,
                          height: 73.h
                        ),
                        items:  const [
                          Events(),
                          EventsHistory()
                        ],
                      )
            
            
            
            
                    ],
                  ),
            
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}


