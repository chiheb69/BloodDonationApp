import 'package:BloodDonationAppChiheb/Models/DonarsDetails.dart';
import 'package:BloodDonationAppChiheb/widgets/ProfileButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';
import '../widgets/ProfileInfo.dart';
import '../widgets/textwidget.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.s,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 38.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
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
                  TextWidget(
                    text: 'Profile',
                    fontSize: 22,
                    color: kheading,
                  ),
                  Icon(Icons.edit_calendar_sharp, color: knormalText,),
                ],
              ),
            ),
            SizedBox(height: 22.h,),
            Container(
              height: 89.54.h,
              width: 89.54.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(image: AssetImage(DonorsList[2].image), fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 20.h,),
            TextWidget(
                text: DonorsList[2].Name,
                fontSize: 30,
                color: kheading,
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on_outlined, color: kmaincolor,
                ),
                SizedBox(width: 10.w,),
                TextWidget(
                    text: DonorsList[2].Place,
                    fontSize: 18,
                    color: knormalText,
                ),
              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: ,
              children: const [
                ProfileButton(text: 'Call Now', icon: Icons.phone_outlined, color: kcallbuttoncolor),
                ProfileButton(text: 'Request', icon: Icons.arrow_back, color: kmaincolor),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileInfo(
                  bloodGroup: DonorsList[2].BloodGroup,
                  bloodGrouptext: 'Blood Type',
                ),
                ProfileInfo(
                    bloodGroup: '${DonorsList[2].TimeDonated}',
                    bloodGrouptext: 'Donated',
                ),
                ProfileInfo(
                    bloodGroup: '${DonorsList[2].Requested}',
                    bloodGrouptext: 'Requested',
                ),
              ],
            ),
            SizedBox(height: 25.h,),
            Container(
              width: 1.sw,
              height: 55.h,
              decoration: const BoxDecoration(
                color: kwhite,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 10,
                    color: Colors.black12,
                  )
                ]
              ),
              child: Row(
                children: [
                  Icon(Icons.date_range, color: kmaincolor,),
                  TextWidget(text: 'Available for donate', fontSize: 14, color: knormalText),

                ],
              ),
            ),
            Container(
              width: 1.sw,
              height: 55.h,
              decoration: const BoxDecoration(
                  color: kwhite,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 10,
                      color: Colors.black12,
                    )
                  ]
              ),
              child: Row(
                children: [
                  Icon(Icons.mail_outline_rounded, color: kmaincolor,),
                  TextWidget(text: 'Invite a friend', fontSize: 14, color: knormalText),

                ],
              ),
            ),
            Container(
              width: 1.sw,
              height: 55.h,
              decoration: const BoxDecoration(
                  color: kwhite,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 10,
                      color: Colors.black12,
                    )
                  ]
              ),
              child: Row(
                children: [
                  Icon(Icons.expand, color: kmaincolor,),
                  TextWidget(text: 'Get help', fontSize: 14, color: knormalText),

                ],
              ),
            ),
            Container(
              width: 1.sw,
              height: 55.h,
              decoration: const BoxDecoration(
                  color: kwhite,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 10,
                      color: Colors.black12,
                    )
                  ]
              ),
              child: Row(
                children: [
                  Icon(Icons.logout_outlined, color: kmaincolor,),
                  TextWidget(text: 'Sign out', fontSize: 14, color: knormalText),

                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}

