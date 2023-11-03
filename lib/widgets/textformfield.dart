import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';


class Textformfield extends StatelessWidget {

  String hintText;
  bool obsecureText;
  TextInputType keybordtype;
  IconData icon;
  String? Function(String?) validator;


   Textformfield({
    required this.hintText,
    required this.obsecureText,
    required this.keybordtype,
    required this.icon,
     required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      validator: (value){
        return validator(value.toString());
      },
      obscureText: obsecureText,
      keyboardType: keybordtype,
      style: TextStyle(color: kheading, fontSize: 20.sp),
      decoration: InputDecoration(

        border: InputBorder.none,
        hintText: hintText, hintStyle: TextStyle(
        fontSize: 18.sp,
        color: kheading,
        fontWeight: FontWeight.w400,
        fontFamily: 'PoppinsRegular',

      ),

        prefixIcon:  Icon(icon, color: kmaincolor,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide:const BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide:const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide:const BorderSide(
            color: Colors.transparent,
          ),
        ),
        fillColor: ktextfieldcolor,
        filled: true,
      ),
    );
  }
}
