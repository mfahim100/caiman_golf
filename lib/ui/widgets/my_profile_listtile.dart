import 'package:caiman_golf/core/constants/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyProfileListTile extends StatelessWidget {
  final String avatarLink, name, points;

  const MyProfileListTile({
    super.key,
    required this.avatarLink,
    required this.name,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12.h,
          width: 92.w,
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
                width: 48.w,
                // color: Colors.red,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.5.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
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
                        points,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: ConstColors.kPrimaryColor
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.w)
                  ),
                  border: Border.all(
                    color: Colors.green,
                    width: 05,

                  )
                ),
                width: 16.w,
                height: 8.h,
                child: Center(
                  child: Text('handiCap 7.2',style: GoogleFonts.poppins(
                      color: ConstColors.kPrimaryColor,
                    fontSize:12.sp
                  ),),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 1.h,)
      ],
    );
  }
}
