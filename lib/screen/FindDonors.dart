import 'package:BloodDonationAppChiheb/screen/SingleDonorDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/DonarsDetails.dart';
import '../Models/DonationRequestList.dart';
import '../constants/constant.dart';
import '../widgets/DonateTile.dart';
import '../widgets/DonorsDetailsCard.dart';
import '../widgets/textwidget.dart';

class FindDonors extends StatefulWidget {
  const FindDonors({Key? key}) : super(key: key);

  @override
  State<FindDonors> createState() => _FindDonorsState();
}

class _FindDonorsState extends State<FindDonors> {
  void _settingModelBottomNaviation(int index){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        // clipBehavior: Clip.none,

        builder: (BuildContext context){
          print(DonorsList[index]);
          return SingleDonorDetailScreen( index: index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Padding(
              padding: EdgeInsets.only(top: 38.h),
              child: Row(
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
                  Padding(
                    padding: EdgeInsets.only(left: 79.w),
                    child: TextWidget(
                      text: 'Find Donors',
                      fontSize: 22,
                      color: kheading,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.h,
                  width: 300.w,
                  decoration:const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 15,
                        ),
                      ]
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 18.sp, color: knormalText),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 18.sp, color: knormalText),
                      prefixIcon: Icon(Icons.search_outlined, color: knormalText,),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Image.asset('images/filtericon1.png', width: 48.w,height: 48.h,),
                    Positioned(
                        top: 8.h,
                        left: 12.w,
                        child: Image.asset('images/filtericon2.png', width: 22.w, height: 32.h,)),
                  ],
                ),

              ],

            ),
      Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: donationRequestList.length,
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  _settingModelBottomNaviation(index);
                },
                child: DonorDetailsCard(
                    name: DonorsList[index].Name,
                    location: DonorsList[index].Place,
                    image: DonorsList[index].image,
                    bloodgroup: DonorsList[index].BloodGroup,
                ),
              );
            }),
      ),
          ],
        ),
      ),
    );
  }
}


