import 'package:BloodDonationAppChiheb/screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/textformfield.dart';
import '/constants/constant.dart';
import '/widgets/textwidget.dart';
import '/widgets/mainbutton.dart';
import 'home.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              Stack(
                children: [
                  Image.asset('images/vector_red.png',width: 68.w,height: 102.h,),
                  Positioned(
                    top: 35,
                    bottom: 40,
                    right: 30,
                    left: 20,
                    child:
                    Image.asset('images/vector_red.png', width: 10.w,height: 15.h,),
                  ),
                  Positioned(
                    top: 55,
                    bottom: 20,
                    right: 10,
                    left: 40,
                    child: Image.asset('images/vector_red.png',width: 10.w,height: 15.h,),
                  ),
                  Positioned(

                    top: 65,
                    bottom: 10,
                    right: 30,
                    left: 20,
                    child: Image.asset('images/vector_red.png',width: 10.w,height: 15.h,),
                  ),  //
                ],
              ),
              SizedBox(height: 8.h,),
              Row(
                children: [
                  const Spacer(flex: 4,),
                  TextWidget(text: 'Dare', fontSize: 25, color: kmaincolor),
                  const Spacer(),
                  TextWidget(text: 'To', fontSize: 25, color: kheading),
                  const Spacer(),
                  TextWidget(text: 'Donate', fontSize: 25, color: kmaincolor),
                  const Spacer(flex: 4,),
                ],
              ),
              Form(
                key: _formkey,
                  child:
              Column(
                children: [
                  SizedBox(height: 30.h),
                  Textformfield(
                      hintText: 'Chiheb Kammoun',
                      obsecureText: false,
                      keybordtype: TextInputType.name,
                      icon: Icons.person_2_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  Textformfield(
                    hintText: 'kammoun.chiheb.7@gmail.com',
                    obsecureText: false,
                    keybordtype: TextInputType.emailAddress,
                    icon: Icons.email_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  Textformfield(
                    hintText: '***********',
                    obsecureText: true,
                    keybordtype: TextInputType.visiblePassword,
                    icon: Icons.lock_outline,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  Textformfield(
                    hintText: '28 421 521',
                    obsecureText: false,
                    keybordtype: TextInputType.number,
                    icon: Icons.phone_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Phone Number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  Textformfield(
                    hintText: 'O-',
                    obsecureText: false,
                    keybordtype: TextInputType.name,
                    icon: Icons.water_drop_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Blood Group';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  Textformfield(
                    hintText: 'Teboulba',
                    obsecureText: false,
                    keybordtype: TextInputType.name,
                    icon: Icons.location_on_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Select Your Location';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              ),
              SizedBox(height: 20.h),
              MainButton(
                  buttonText: 'REGISTER',
                  buttonTextColor: kwhite,
                  fillColor: kmaincolor,
                  onPressed: (){
                    if(_formkey.currentState!.validate())
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  TextWidget(
                      text: 'Already have an account? ',
                      fontSize: 18,
                      color: knormalText,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context)=>const LoginScreen(),
                        ),
                      );
                    },
                    child: TextWidget(
                        text: 'Log in',
                        fontSize: 18,
                        color: kmaincolor,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
