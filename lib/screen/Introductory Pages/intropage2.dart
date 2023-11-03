import 'package:BloodDonationAppChiheb/screen/loginscreen.dart';
import 'package:BloodDonationAppChiheb/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constant.dart';
import '../../widgets/textwidget.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
                  Image.asset('images/blood_test_donation.png'),
                  TextWidget(
                    text: 'Post A Blood Request',
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
                  onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Onboarding()),
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
