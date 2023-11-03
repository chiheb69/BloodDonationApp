import 'package:BloodDonationAppChiheb/constants/constant.dart';
import 'package:BloodDonationAppChiheb/screen/Introductory%20Pages/intropage1.dart';
import 'package:BloodDonationAppChiheb/screen/Introductory%20Pages/intropage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class IntroPage extends StatelessWidget {
  final _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          SizedBox(
            height: 0.9.sh,
            child: PageView(
              controller: _controller,
              children: [
                IntroPage1(),
                IntroPage2(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: ExpandingDotsEffect(
              activeDotColor: kmaincolor,
              dotColor: knormalText,
              dotHeight: 10.h,
              dotWidth: 10.w,
              spacing: 16.w,
            ),
          ),
        ],
      ),
    );
  }
}
