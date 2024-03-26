import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomDropDownMenu extends StatefulWidget {
  final String text,textOne;
  final Function(String?)? onChanged;
  final List<String> items;


  const CustomDropDownMenu({
    super.key,
    required this.text,
    required this.items,
    required this.onChanged, required this.textOne,
  });

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

String? selectedValue;

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.textOne,
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
            width: 90.w,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(3.w)
            ),
            child: DropdownButtonFormField2(
              // value: widget.selected,
              decoration: const InputDecoration(
                //Add isDense true and zero Padding.
                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none
                //Add more decoration as you want here
                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
              ),
              isExpanded: true,
              hint: Text(
                widget.text,
                style:  TextStyle(fontSize: 15.sp, color: Colors.grey),
              ),
              items: widget.items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style:  TextStyle(
                            fontSize:  15.sp,
                            color: Colors.grey
                          ),
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select ${widget.text}.';
                }
                return null;
              },
              onChanged: widget.onChanged,
              onSaved: (value) {
                selectedValue = value.toString();
              },
              buttonStyleData:  ButtonStyleData(
                height:8.h,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
                iconSize: 30,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
              ),
            ),
          ),

          SizedBox(height: 1.h,)

        ],
      ),
    );
  }
}
