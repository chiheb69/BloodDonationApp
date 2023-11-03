import 'package:BloodDonationAppChiheb/constants/constant.dart';
import 'package:BloodDonationAppChiheb/widgets/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/DonationRequestList.dart';
import '../widgets/DonateTile.dart';

class DonationRequestListScreen extends StatelessWidget {
  const DonationRequestListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 38.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w
                  , right: 20.w),
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
                    text: 'Donation Request',
                    fontSize: 22,
                    color: kheading,
                  ),
                ),
              ],
            ),
          ),
          Container(

            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: donationRequestList.length,
                  itemBuilder: (context, index){
                return Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: DonateTile(
                    Name: donationRequestList[index].name,
                    Location: donationRequestList[index].location,
                    Time: donationRequestList[index].time,
                    BloodGroup: donationRequestList[index].bloodGroupType,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
