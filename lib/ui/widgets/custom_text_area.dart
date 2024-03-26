import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextArea extends StatelessWidget {
  final String text, hintText;
  final Icon? prefix;
  final IconButton? suffixButton;
  late final bool obscureText;
  final TextInputType textInputType;
  final Icon? suffix;
  final int? maxLength;
  final bool isPass;
  TextEditingController? controller = TextEditingController();
  final String? Function(String?)? validator;
   CustomTextArea({
    super.key,
    required this.text,
    required this.hintText,
    this.obscureText = false,
    this.prefix,
    this.suffixButton,
    this.textInputType = TextInputType.text,
    this.suffix,
    this.maxLength,
    this.validator,
    this.isPass = false,
    this.controller,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
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
            child: TextFormField(
              maxLength: maxLength,
              validator: validator,
              keyboardType: textInputType,
              obscureText: obscureText,
              controller: controller,
              maxLines: 6,
              style:  TextStyle(color: Colors.grey,decoration: TextDecoration.none,fontSize: 15.sp),
              decoration: InputDecoration(
                  errorStyle:  TextStyle(color: Colors.grey,fontSize: 15.sp),
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 15.sp),
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 15.sp),
                  suffix: suffixButton,
                  hintText: hintText,
                  prefixIcon: prefix,
                  suffixIcon: suffix,
                  contentPadding: EdgeInsets.symmetric(vertical: 1.6.h, horizontal: 5.w),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(3.w),
                  //   borderSide:  const BorderSide(
                  //     color: Colors.black,
                  //   ),
                  // ),
                  border: InputBorder.none
                // focusedBorder: OutlineInputBorder(
                //   borderSide: const BorderSide(
                //       color: Colors.black
                //   ),
                //   borderRadius: BorderRadius.circular(3.w),
                // ),
              ),
            ),
          ),

          SizedBox(
            height: 1.h,
          ),
        ],
      ),
    );
  }
}
