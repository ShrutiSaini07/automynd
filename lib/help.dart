import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

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
      decoration: BoxDecoration(
          color: green,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
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