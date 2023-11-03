import 'Bottom_Navigation_Bar.dart';
import 'home.dart';
import 'reset_password.dart';
import 'package:BloodDonationAppChiheb/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/textformfield.dart';
import '/constants/constant.dart';
import '/widgets/textwidget.dart';
import '/widgets/mainbutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Stack(
                  children: [
                    Image.asset('images/vector_red.png', width: 68.w, height: 102.h),
                    Positioned(
                      top: 35,
                      bottom: 40,
                      right: 30,
                      left: 20,
                      child: Container(
                        child: Image.asset('images/vector_red.png', width: 10.w, height: 15.h),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      bottom: 20,
                      right: 10,
                      left: 40,
                      child: Container(
                        child: Image.asset('images/vector_red.png', width: 10.w, height: 15.h),
                      ),
                    ),
                    Positioned(
                      top: 65,
                      bottom: 10,
                      right: 30,
                      left: 20,
                      child: Container(
                        child: Image.asset('images/vector_red.png', width: 10.w, height: 15.h),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center text horizontally
                  children: [
                    TextWidget(text: 'Dare', fontSize: 25, color: kmaincolor),
                    TextWidget(text: ' To ', fontSize: 25, color: kheading),
                    TextWidget(text: 'Donate', fontSize: 25, color: kmaincolor),
                  ],
                ),
                SizedBox(height: 120.h),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Textformfield(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is required';
                          }
                          if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return 'Invalid email';
                          }
                          return null;
                        },
                        hintText: 'kammoun.chiheb.7@gmail.com',
                        obsecureText: false,
                        keybordtype: TextInputType.emailAddress,
                        icon: Icons.email_outlined,
                      ),
                      SizedBox(height: 25.h),
                      Textformfield(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          return null;
                        },
                        hintText: '***********',
                        obsecureText: true,
                        keybordtype: TextInputType.visiblePassword,
                        icon: Icons.lock_outline,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 85.h),
                MainButton(
                  buttonText: 'LOG IN',
                  buttonTextColor: kwhite,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  fillColor: kmaincolor,
                ),
                SizedBox(height: 15.h),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPassword()));
                  },
                  child: TextWidget(
                    text: 'Forgot Password?',
                    fontSize: 18.sp,
                    color: kmaincolor,
                  ),
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center text horizontally
                  children: [
                    TextWidget(
                      text: "Don't have an account? ",
                      fontSize: 18.sp,
                      color: knormalText,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: TextWidget(
                        text: ' Register Now.',
                        fontSize: 18.sp,
                        color: kmaincolor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
