import 'dart:math';

import 'package:auto_mynds/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _light = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 26.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/Images/logo.png",
                        height: 32.h,
                        width: 32.w,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      SvgPicture.asset(
                        "assets/svgIcons/autoMynd.svg",
                        height: 26.h,
                        width: 116.w,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      calender(),
                      SizedBox(
                        width: 24.w,
                      ),
                      weather(),
                      SizedBox(
                        width: 24.w,
                      ),
                      profileButton(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      navDrawerButton(),
                      SizedBox(
                        width: 19.w,
                      ),
                      Text(
                        "Good Morning, Jane",
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: "poppinsRegular",
                            color: grey),
                      ),
                    ],
                  ),
                  driveMode(),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                children: [
                  Expanded(child: tV()),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(child: cV()),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(child: aV()),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(child: oC()),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 31.h),
                decoration: BoxDecoration(
                  border: Border.all(color: white, width: 1),
                  color: white.withOpacity(.36),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    button(),
                    SizedBox(
                      height: 24.h,
                    ),
                    Soc(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Schedule("Emily Thompson", "Follow-up","Start", green),
                    SizedBox(
                      height: 16.h,
                    ),
                    Schedule("Shruti Saini", "Follow-up", "Start" ,green),
                    SizedBox(
                      height: 16.h,
                    ),
                    Schedule("Mohd Anas", "Reassessment","Start", blue),
                    SizedBox(
                      height: 16.h,
                    ),
                    Schedule("Rohit", "Eval", "Start" ,yellow),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget driveMode() {
    return Container(
      height: 32.h,
      width: 144.w,
      padding: EdgeInsets.only(left: 10.w, top: 8.h, bottom: 8.h),
      decoration: BoxDecoration(
        color: white.withOpacity(.36),
        border: Border.all(color: white, width: 1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Drive Mode",
            style: TextStyle(
                fontSize: 10.sp, fontFamily: "poppinsRegular", color: grey),
          ),
          Transform.scale(
            scale: .6,
            child: CupertinoSwitch(
              value: _light,
              activeColor: Color(0xffF6C46E),
              onChanged: (bool val) {
                setState(() {
                  _light = val;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget calender() {
  return Row(
    children: [
      SvgPicture.asset(
        "assets/svgIcons/calender.svg",
        height: 24.h,
        width: 24.w,
      ),
      SizedBox(
        width: 4.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "2nd Dec",
            style: TextStyle(
                fontSize: 16.sp, color: grey, fontFamily: "poppinsRegular"),
          ),
          Text(
            "2024, Wed",
            style: TextStyle(
                fontSize: 12.sp, color: grey, fontFamily: "poppinsLight"),
          ),
        ],
      )
    ],
  );
}

Widget weather() {
  return Row(
    children: [
      SvgPicture.asset(
        "assets/svgIcons/weather.svg",
        height: 24.h,
        width: 24.w,
      ),
      SizedBox(
        width: 4.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "14.46°C ",
            style: TextStyle(
                fontSize: 16.sp, color: grey, fontFamily: "poppinsRegular"),
          ),
          Text(
            "Broken clouds",
            style: TextStyle(
                fontSize: 12.sp, color: grey, fontFamily: "poppinsLight"),
          ),
        ],
      )
    ],
  );
}

Widget profileButton() {
  return Container(
    height: 42.h,
    width: 170.w,
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
      color: white.withOpacity(.20),
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(14.r),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  "assets/Images/women1.png",
                  scale: 2,
                ))),
        SizedBox(
          width: 4.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jane Smith",
              style: TextStyle(
                  fontSize: 12.sp, fontFamily: "poppinsRegular", color: black),
            ),
            Text(
              "PT",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsLight", color: grey),
            ),
          ],
        ),
        SizedBox(
          width: 34.w,
        ),
        SvgPicture.asset(
          "assets/svgIcons/scrollDown.svg",
          color: grey,
          height: 6.h,
          width: 13.w,
        ),
      ],
    ),
  );
}

Widget navDrawerButton() {
  return Container(
    height: 32.h,
    width: 32.w,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: white.withOpacity(.20),
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: SvgPicture.asset(
      "assets/svgIcons/filter.svg",
      width: 10.32.w,
      height: 8.26,
    ),
  );
}

Widget tV() {
  return Container(
    height: 48.h,
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: white.withOpacity(.20),
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today’s visit",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsLight", color: grey),
            ),
            Text(
              "10",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsRegular", color: grey),
            )
          ],
        ),
        SvgPicture.asset(
          "assets/svgIcons/write.svg",
          height: 32.h,
          width: 32.w,
        )
      ],
    ),
  );
}

Widget cV() {
  return Container(
    height: 48.h,
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: white.withOpacity(.20),
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Completed Visits",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsLight", color: grey),
            ),
            Text(
              "10",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsRegular", color: grey),
            )
          ],
        ),
        SvgPicture.asset(
          "assets/svgIcons/check.svg",
          height: 32.h,
          width: 32.w,
        )
      ],
    ),
  );
}

Widget aV() {
  return Container(
    height: 48.h,
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: white.withOpacity(.20),
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Average Visit",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsLight", color: grey),
            ),
            Text(
              "10",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsRegular", color: grey),
            )
          ],
        ),
        SvgPicture.asset(
          "assets/svgIcons/clock.svg",
          height: 32.h,
          width: 32.w,
        )
      ],
    ),
  );
}

Widget oC() {
  return Container(
    height: 48.h,
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: white.withOpacity(.20),
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Open Charts",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsLight", color: grey),
            ),
            Text(
              "10",
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsRegular", color: grey),
            )
          ],
        ),
        SvgPicture.asset(
          "assets/svgIcons/notes.svg",
          height: 32.h,
          width: 32.w,
        )
      ],
    ),
  );
}

Widget button() {
  return Container(
    height: 38.h,
    width: 121.w,
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: green,
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Center(
        child: Text(
      "Upcoming",
      style: TextStyle(
          fontSize: 14.sp, fontFamily: "poppinsRegular", color: white),
    )),
  );
}

Widget SOC() {
  return Stack(children: [
    Container(
      height: 272.h,
      width: 656.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: grey1, width: 1),
      ),
    ),
    Container(
      height: 68.h,
      width: 656.w,
      decoration: BoxDecoration(
          color: green,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "SOC",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: "poppinsRegular",
                      color: white),
                ),
                SizedBox(
                  width: 559.w,
                ),
                SvgPicture.asset(
                  "assets/svgIcons/threeDots.svg",
                  width: 3.w,
                  height: 15.h,
                  color: white,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/svgIcons/calenderOutlined.svg",
                  height: 12.h,
                  width: 12.w,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text("Wed Jun 20 - 08:00 AM",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "poppinsRegular",
                        color: white)),
                SizedBox(
                  width: 21.w,
                ),
                SvgPicture.asset(
                  "assets/svgIcons/location.svg",
                  height: 12.h,
                  width: 12.w,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text("1036 Florida 50",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "poppinsRegular",
                        color: white)),
              ],
            ),
          ],
        ),
      ),
    ),
    Positioned(
      top: 84.h,
      right: 16.w,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.asset(
                        "assets/Images/patient.png",
                        height: 44.h,
                        width: 44.w,
                        fit: BoxFit.fill,
                      ))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Emily Thompson",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "poppinsRegular",
                          color: cyan)),
                  Text("Patient",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "poppinsLight",
                          color: black)),
                ],
              ),
              SizedBox(
                width: 268.w,
              ),
              Container(
                height: 38.h,
                width: 138.w,
                decoration: BoxDecoration(
                  color: cyan,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                    child: Text("Start",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "poppinsRegular",
                            color: white))),
              ),
            ],
          ),
        ],
      ),
    ),
    Positioned(
      top: 164.h,
      left: 16.w,
      right: 16.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 0.5.h,
            width: 624.w,
            color: black.withOpacity(.08),
          ),
          SizedBox(
            height: 26.h,
          ),
          Text(
            "Appointment Note",
            style: TextStyle(fontFamily: "poppinsRegular", fontSize: 14.sp),
          ),
          Text(
            "Client was referred by Mercy Hospital,  lives with his family  of 4 kids and 1 pet dog. ",
            style: TextStyle(fontFamily: "poppinsLight", fontSize: 12.sp),
          ),
          Text(
            "Tap to see more",
            style: TextStyle(fontFamily: "poppinsLight", fontSize: 12.sp),
          ),
        ],
      ),
    ),
  ]);
}

Widget Schedule(String patientName, String type, String buttonName , Color color) {
  return Container(
    height: 96.h,
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(12.r),
      border: Border.all(color: grey1, width: 1),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            patientCard(),
            SizedBox(
              width: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(patientName,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "poppinsRegular",
                        color: cyan)),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svgIcons/calenderOutlined.svg",
                      height: 12.h,
                      width: 12.w,
                      color: black,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text("Wed Jun 20 - 08:00 AM",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "poppinsLight",
                            color: black)),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            coloredButtons(type, color),
            SizedBox(
              width: 90.w,
            ),
            Container(
              height: 38.h,
              width: 138.w,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: grey, width: 0.5),
              ),
              child: Center(
                child: Text(buttonName,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "poppinsRegular",
                        color: grey)),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget patientCard(){
  return Container(
      height: 44.h,
      width: 44.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            "assets/Images/patient.png",
            scale: 2,
            fit: BoxFit.fill,
          )));
}


Widget coloredButtons(String type, Color color){
  return Container(
    height: 24.h,
    width: 114.w,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Center(
        child: Text(type,
            style: TextStyle(
                fontSize: 12.sp,
                fontFamily: "poppinsRegular",
                color: white))),
  );
}

Widget Soc(){

  return Container(
    height: 272.h,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(12.r),
      border: Border.all(color: grey1, width: 1),
    ),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 26.w, 16.h),
          height: 68.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SOC",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "poppinsRegular",
                        color: white),
                  ),
                  SvgPicture.asset(
                    "assets/svgIcons/threeDots.svg",
                    width: 3.w,
                    height: 15.h,
                    color: white,
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgIcons/calenderOutlined.svg",
                    height: 12.h,
                    width: 12.w,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text("Wed Jun 20 - 08:00 AM",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "poppinsRegular",
                          color: white)),
                  SizedBox(
                    width: 21.w,
                  ),
                  SvgPicture.asset(
                    "assets/svgIcons/location.svg",
                    height: 12.h,
                    width: 12.w,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text("1036 Florida 50",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "poppinsRegular",
                          color: white)),
                ],
              ),

            ],
          ),
        ),
        SizedBox(
          height: 26.h,
        ),
        Container(
            height: 44.h,
            width: 44.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  "assets/Images/patient.png",
                  scale: 2,
                  fit: BoxFit.fill,
                ))),
      ],
    ),
  );
}