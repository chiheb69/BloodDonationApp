import 'package:BloodDonationAppChiheb/screen/verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/textformfield.dart';
import '/constants/constant.dart';
import '/widgets/textwidget.dart';
import '/widgets/mainbutton.dart';




class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: InkWell(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formkey,
                child: Textformfield(
                    hintText: 'kammoun.chiheb.7@gmail.com',
                    obsecureText: false,
                    keybordtype: TextInputType.emailAddress,
                    icon: Icons.email_outlined,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email is required';
                    }
                    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                      return 'Invalid email';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 30.h),
              TextWidget(
                  text: 'Your password reset will be send in your registered email address.',
                  fontSize: 18,
                  color: knormalText,
              ),
              SizedBox(height: 20.h),
              MainButton(
                  buttonText: 'Send',
                  buttonTextColor: kwhite,
                  fillColor: kmaincolor,
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const VerifyScreen(),
                        ),
                      );
                    }
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
