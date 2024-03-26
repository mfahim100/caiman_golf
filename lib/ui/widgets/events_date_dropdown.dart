import 'package:caiman_golf/core/constants/const_dropdown_lists.dart';
import 'package:caiman_golf/ui/widgets/dropdown_for_date.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EventDateDropDown extends StatefulWidget {
  const EventDateDropDown({super.key});

  @override
  State<EventDateDropDown> createState() => _EventDateDropDownState();
}

class _EventDateDropDownState extends State<EventDateDropDown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Events Date',
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
          SizedBox(
              height: 5.h,
              child:  Row(
                children: [


                  SizedBox(width: 1.w),
                  
                  DropDownForDate(text: 'DD',items: ConstDropDownLists.dates,onChanged: (txt1){},),
                  
                  SizedBox(width: 1.w),

                  DropDownForDate(text: 'MM',items: ConstDropDownLists.months,onChanged: (txt1){},),


                  SizedBox(width: 1.w),

                  DropDownForDate(text: 'YYYY',items: ConstDropDownLists.yearsList,onChanged: (txt1){},),



                ],
              )
          ),

          SizedBox(
            height: 1.h,
          ),
        ],
      ),
    );
  }
}
