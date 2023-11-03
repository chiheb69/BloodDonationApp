import 'package:BloodDonationAppChiheb/widgets/InputField.dart';
import 'package:BloodDonationAppChiheb/widgets/mainbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';
import '../widgets/textwidget.dart';

class Compagin extends StatefulWidget {
  const Compagin({Key? key}) : super(key: key);

  @override
  State<Compagin> createState() => _CompaginState();
}

class _CompaginState extends State<Compagin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 38.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 30.w),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            color: knormalText,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,color: kheading,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 29.w),
                      child: TextWidget(
                        text: 'Create A Request',
                        fontSize: 22,
                        color: kheading,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120.h,),
                InputField(hintText: 'City', icon: Icons.location_on_outlined, color: kmaincolor),
              SizedBox(height: 20.h,),
                InputField(hintText: 'Hospital', icon: Icons.home_work_outlined, color: kmaincolor),
              SizedBox(height: 20.h,),
                InputField(hintText: 'Blood Type', icon: Icons.bloodtype_outlined, color: kmaincolor),
              SizedBox(height: 20.h,),
                InputField(hintText: 'Mobile', icon: Icons.phone, color: kmaincolor),
              SizedBox(height: 20.h,),
                SizedBox(
                  height: 120.h,
                    child: InputField(hintText: 'Add note', icon: Icons.note_outlined , color: kmaincolor, expands: true, maxLines: null,)),
              SizedBox(height: 60.h,),
              MainButton(
                width: 185.w,
                  buttonText: 'Register',
                  buttonTextColor: Colors.white,
                  fillColor: kmaincolor,
                  onPressed: () => showDialog(
                    context: context,
                    builder: (_) => Dialog(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),

                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          Image.asset(
                          "images/pana.png",
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 50.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(text: 'Blood is successfully', fontSize: 18, color: knormalText),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(text: 'requested.', fontSize: 18, color: knormalText),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 23.h),
                          child: MainButton(
                            width: 180.w,
                            fillColor: kmaincolor,
                            buttonText: 'Close',
                            buttonTextColor: kwhite,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                       ]
                        ),
                      ),
                      ),
              ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
