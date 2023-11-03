


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';
import 'textwidget.dart';

class ProfileButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const ProfileButton({
    required this.text,
    required this.icon,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158.w,
      height: 52.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon,color: kwhite,),
          TextWidget(text: text, fontSize: 16.sp, color: kwhite),
        ],
      ),
    );
  }
}
