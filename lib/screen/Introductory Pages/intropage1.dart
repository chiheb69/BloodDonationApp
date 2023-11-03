import 'package:BloodDonationAppChiheb/screen/Introductory%20Pages/intropage2.dart';
import 'package:BloodDonationAppChiheb/screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constant.dart';
import '../../widgets/textwidget.dart';

class IntroPage1 extends StatefulWidget {
  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/blood_test.png'),
                  TextWidget(
                    text: 'Find Blood Donors',
                    fontSize: 24.sp,
                    color: kheading,
                    weight: FontWeight.w500,
                  ),
                  TextWidget(
                    text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.',
                    fontSize: 20.sp,
                    color: knormalText,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: TextWidget(
                    text: 'Skip',
                    fontSize: 20,
                    color: kheading,
                    weight: FontWeight.w400,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IntroPage2()),
                  ),
                  child: TextWidget(
                    text: 'Next',
                    fontSize: 20,
                    color: kmaincolor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
