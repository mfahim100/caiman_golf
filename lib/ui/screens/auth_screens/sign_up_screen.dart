import 'package:caiman_golf/core/constants/const_colors.dart';
import 'package:caiman_golf/core/constants/const_dropdown_lists.dart';
import 'package:caiman_golf/core/constants/const_textstyles.dart';
import 'package:caiman_golf/ui/screens/auth_screens/sign_in_screen.dart';
import 'package:caiman_golf/ui/screens/home_screen/home_screen.dart';
import 'package:caiman_golf/ui/widgets/custom_button.dart';
import 'package:caiman_golf/ui/widgets/custom_drop_down.dart';
import 'package:caiman_golf/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          color: ConstColors.whiteColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                  
                SizedBox(height: 5.h,),
                  
                SizedBox(
                  height: 5.h,
                  child:const Image(
                    image: AssetImage('assets/images/Group 1.png'),
                  )
                ),
                
                SizedBox(height: 0.5.h,),
                
                Text('Register For Free',style: ConstTextStyles.registerText,),
                SizedBox(height: 0.5.h,),
                Text('Please Enter Your Details',style: ConstTextStyles.enterDetails,),
                
                CustomTextField(text: 'Name', hintText: 'Name'),
                CustomTextField(text: 'Last Name', hintText: 'Last Name'),
                
                CustomDropDownMenu(text: 'Select Your Gender', items: ConstDropDownLists.gender, onChanged: (txt){}, textOne:'Gender',),
                CustomDropDownMenu(text: 'Select Yur Club', items: ConstDropDownLists.selectClub, onChanged: (txt){}, textOne:'Home Club',),
            
                CustomTextField(text: 'Email', hintText: 'Email'),
                CustomTextField(text: 'Password', hintText: 'Password',obscureText: true,),

                SizedBox(height: 2.h,),


                CustomButton(text: 'Register',onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const HomeScreen();
                  }));
                },),


                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const SignInScreen();
                  }));
                }, child: Text('I have Ciaman Account',style: ConstTextStyles.textButtonStyle,)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
