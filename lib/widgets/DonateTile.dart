import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/DonationRequestList.dart';
import '../constants/constant.dart';
import 'textwidget.dart';

class DonateTile extends StatelessWidget {
  final String Name;
  final String Location;
  final String BloodGroup;
  final int Time;

  const DonateTile({
    required this.Name,
    required this.Location,
    required this.Time,
    required this.BloodGroup,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374.w,
      height: 146.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    text: 'Name',
                    fontSize: 14,
                    color: knormalText),
                TextWidget(
                    text: Name,
                    fontSize: 14,
                    color: kheading),
                TextWidget(
                    text: 'Location',
                    fontSize: 14,
                    color: knormalText),
                TextWidget(
                    text: Location,
                    fontSize: 14,
                    color: kheading),
                Row(
                  children: [
                    TextWidget(
                        text: 'Time',
                        fontSize: 14,
                        color: knormalText),
                    TextWidget(
                        text: ' Min Ago',
                        fontSize: 14,
                        color: knormalText),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 40.w,
                  height: 55.h,
                  decoration:const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/blood_group.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: TextWidget(
                      text: BloodGroup,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextWidget(
                  text: 'Donate',
                  fontSize: 18,
                  color: kmaincolor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

