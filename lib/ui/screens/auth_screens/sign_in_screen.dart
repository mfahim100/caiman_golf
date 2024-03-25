import 'package:caiman_golf/ui/screens/auth_screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/const_colors.dart';
import '../../../core/constants/const_textstyles.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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

                Text('Sign In Here ',style: ConstTextStyles.registerText,),
                SizedBox(height: 0.5.h,),
                Text('Please Enter Your Details',style: ConstTextStyles.enterDetails,),


                CustomTextField(text: 'Email', hintText: 'Email'),
                CustomTextField(text: 'Password', hintText: 'Password',obscureText: true,),

                SizedBox(height: 2.h,),


                CustomButton(text: 'Log In',onPressed: (){},),

                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const SignUpScreen();
                  }));
                }, child: Text('Create Account',style: ConstTextStyles.textButtonStyle,)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
