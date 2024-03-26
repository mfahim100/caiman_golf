import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/const_colors.dart';

class CustomHistoryEventController extends StatelessWidget {
  final String name, time, youOrFriend, winOrLose, pointsObtained, duration;

  const CustomHistoryEventController({
    super.key,
    required this.name,
    required this.time,
    required this.youOrFriend,
    required this.winOrLose,
    required this.pointsObtained,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 95.w,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(03.w)),
      child: Padding(
        padding: EdgeInsets.all(1.w),
        child: Row(
          children: [
            SizedBox(
              width: 11.w,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ),
            SizedBox(
              width: 0.7.w,
            ),
            SizedBox(
              width: 29.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        name,
                        style: GoogleFonts.poppins(
                            fontSize: 13.3.sp, fontWeight: FontWeight.bold),
                      )),
                  Text(
                    time,
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 6.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 1.3.h,
                  ),
                  Text(
                    youOrFriend,
                    style: GoogleFonts.poppins(
                        fontSize: 13.sp, color: ConstColors.kPrimaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 06.w,
            ),
            SizedBox(
              width: 12.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Match',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    winOrLose,
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp, color: ConstColors.kPrimaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 03.w,
            ),
            SizedBox(
              width: 12.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Points',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    pointsObtained,
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp, color: ConstColors.kPrimaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 02.w,
            ),
            Container(
              width: 10.w,
              height: 5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.w),
                  border: Border.all(color: Colors.green)),
              child: Center(
                child: Text(
                  duration,
                  style: GoogleFonts.poppins(
                      fontSize: 13.5.sp,
                      fontWeight: FontWeight.bold,
                      color: ConstColors.kPrimaryColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
