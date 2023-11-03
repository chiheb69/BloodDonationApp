import 'package:BloodDonationAppChiheb/constants/constant.dart';
import 'package:BloodDonationAppChiheb/screen/Compagin.dart';
import 'package:BloodDonationAppChiheb/screen/DonationRequest.dart';
import 'package:BloodDonationAppChiheb/screen/FindDonors.dart';
import 'package:BloodDonationAppChiheb/screen/OrderBlood.dart';
import 'package:BloodDonationAppChiheb/screen/Report.dart';
import 'package:BloodDonationAppChiheb/widgets/HomePageButtons.dart';
import 'package:BloodDonationAppChiheb/widgets/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Models/DonationRequestList.dart';
import '../widgets/DonateTile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(image: AssetImage('images/menu.png'),),
                  Stack(
                    children: [
                      const Icon(Icons.notifications_outlined, color: kheading,size: 30,),
                      Positioned(
                        top: 5.h,
                        right: 3.w,
                        left: 17.w,
                        child: Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                          color: kmaincolor),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              height: 180.h,
              child: PageView(
                controller: _controller,
                children: [
                  Container(

                    width: MediaQuery.of(context).size.width*1.1,
                    height: 170.h,
                    decoration: BoxDecoration(
                      image:const  DecorationImage(
                          image: AssetImage('images/main_img.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(

                    width: MediaQuery.of(context).size.width*1.1,
                    height: 170.h,
                    decoration: BoxDecoration(
                      image:const  DecorationImage(
                          image: AssetImage('images/main_img.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(

                    width: MediaQuery.of(context).size.width*1.1,
                    height: 170.h,
                    decoration: BoxDecoration(
                      image:const  DecorationImage(
                          image: AssetImage('images/main_img.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(

                    width: MediaQuery.of(context).size.width*1.1,
                    height: 170.h,
                    decoration: BoxDecoration(
                      image:const  DecorationImage(
                          image: AssetImage('images/main_img.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ScrollingDotsEffect(
                activeDotColor: kmaincolor,
                dotColor: knormalText,
                dotHeight: 10.h,
                dotWidth: 10.w,
                spacing: 16.w,
              ),
            ),

            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric( horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const FindDonors()));
                        },
                        child:const HomePageButtons(
                            imageAddress: 'images/ion_search-outline.png',
                            Text: 'Find Donors'),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DonationRequestListScreen()));
                        },
                        child: const HomePageButtons(
                            imageAddress: 'images/blood-transfusion.png',
                            Text: 'Donates'),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderBlood()));
                        },
                        child: const HomePageButtons(
                            imageAddress: 'images/blood-bag.png',
                            Text: 'Order Bloods'),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      HomePageButtons(
                          imageAddress: 'images/maki_doctor.png',
                          Text: 'Assistant'),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Report()));
                        },
                        child: HomePageButtons(
                            imageAddress: 'images/report.png',
                            Text: 'Report'),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Compagin()));
                        },
                        child: HomePageButtons(
                            imageAddress: 'images/compagin.png',
                            Text: 'Compagin'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h, bottom: 10.h),
                    child: TextWidget(
                        text: 'Donation Request',
                        fontSize: 18,
                        color: kheading,
                      weight: FontWeight.w500,
                    ),
                  ),
                  DonateTile(
                      Name: donationRequestList[0].name,
                      Location: donationRequestList[0].location,
                      Time: donationRequestList[0].time,
                      BloodGroup: donationRequestList[0].bloodGroupType,
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

