import 'package:caiman_golf/core/constants/const_colors.dart';
import 'package:caiman_golf/core/constants/const_textstyles.dart';
import 'package:caiman_golf/ui/widgets/custom_button.dart';
import 'package:caiman_golf/ui/widgets/custom_text_area.dart';
import 'package:caiman_golf/ui/widgets/custom_textfield.dart';
import 'package:caiman_golf/ui/widgets/events_date_dropdown.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 3.h,),

                SizedBox(
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
                                  width: 08.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black
                                    ),
                                    borderRadius: BorderRadius.circular(25.w)
                                  ),
                                  child: Icon(Icons.add,size: 20.sp,),
                              ),

                              SizedBox(width: 0.5.h,),

                              SizedBox(
                                  width: 10.w,
                                  height: 4.h,
                                  child: Icon(Icons.menu,size: 20.sp,),
                              ),



                            ],
                          ),
                        ),




                      ],
                    ),
                  ),
                ),


                SizedBox(height: 1.h,),

               Align(
                 alignment: Alignment.topLeft,
                 child: Padding(padding: EdgeInsets.only(left: 04.w),
                    child: Text('New Event', style: ConstTextStyles.registerText,),
                  ),
               ),
                SizedBox(height: 1.h,),


                CustomTextField(text: 'Club Name', hintText: 'Club name'),
                CustomTextField(text: 'Email', hintText: 'Email'),
                CustomTextField(text: 'Password', hintText: 'Password',obscureText: true,),
                SizedBox(height: 1.h,),

                const EventDateDropDown(),


            SizedBox(
              width: 90.w,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Paste Image',
                      style: GoogleFonts.poppins(
                        // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15.sp,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(3.w)
                    ),
                    height: 5.h,
                    child:Row(
                      children: [
                        Container(
                          width: 75.w
                        ),
                        SizedBox(
                          width: 15.w,
                          child: const Icon(Icons.image),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 1.h,
                  ),

                ],
              ),
            ),


                CustomTextArea(text: 'Paste Text', hintText: 'Enter What Do you Want to Post'),



                SizedBox(
                    height: 4.h,
                    child: CustomButton(text: 'Publish', onPressed: (){}))




              ],
            ),
          ),
        ),
      ),
    );
  }
}
