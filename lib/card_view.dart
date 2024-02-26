import 'dart:math';

import 'package:auto_mynds/constants.dart';
import 'package:auto_mynds/maps_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class GridItem {
  String title;
  String description;
  String value;

  GridItem(
      {required this.title, required this.description, required this.value});
}

class _CardViewState extends State<CardView> {
  List<GridItem> gridItems = [
    GridItem(
        title: "Medical gfjhbsjdvbgjhaejHistory of Review",
        description: "Good Start, carry on !",
        value: "2/10"),
    GridItem(
        title: "Another Title",
        description: "Another Description",
        value: "5/10"),
    GridItem(
        title: "Yet Another Title",
        description: "Yet Another Description",
        value: "9/10"),
    GridItem(
        title: "Medical History of Review",
        description: "Good Start, carry on !",
        value: "2/10"),
    GridItem(
        title: "Another Title",
        description: "Another Description",
        value: "5/10"),
    GridItem(
        title: "Yet Another Title",
        description: "Yet Another Description",
        value: "9/10"),
    GridItem(
        title: "Medical History of Review",
        description: "Good Start, carry on !",
        value: "2/10"),
    GridItem(
        title: "Another Title",
        description: "Another Description",
        value: "5/10"),
    GridItem(
        title: "Yet Another Title",
        description: "Yet Another Description",
        value: "9/10"),
  ];

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: isMobile ? EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h) : EdgeInsets.symmetric(horizontal: 32.w, vertical: 26.h),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              backButton(),
              isMobile ? profileCard() : profileButton(),
            ],
          ),
          SizedBox(
            height: 37.h,
          ),
          Text(
            "Follow Up Note",
            style: TextStyle(
                fontSize: isMobile ? 14.sp : 24.sp,
                fontFamily: "poppinsRegular",
                color: grey),
          ),
          SizedBox(
            height: 48.h,
          ),
          patientDetailContainer(),
          SizedBox(
            height: 24.h,
          ),
          cardUi(),
          SizedBox(
            height: 37.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "You have completed Follow up note",
                style: TextStyle(
                    fontSize: 14.sp, fontFamily: "poppinsLight", color: green),
              ),
              SizedBox(
                width: 26.w,
              ),
              buttonUi(),
            ],
          ),
        ]),
      ),
    );
  }

  Widget cardUi() {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(children: [
        Row(
          children: [
            Container(
              width: 648.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xffF7F9FD),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.w, 13.h, 25.w, 13.h),
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/svgIcons/search.svg"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: "Type section name here ...",
                        hintStyle: TextStyle(
                            fontFamily: "poppinsLight",
                            fontSize: 14.sp,
                            color: grey),
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 32.h,
        ),
        Container(
          height: 2.h,
          color: white2,
        ),
        Container(
          height: 500.h,
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                mainAxisExtent: 163.h
            ),
            itemCount: gridItems.length,
            itemBuilder: (context, index) {
              return gridCardUi(index);
            },
          ),
        ),
        SizedBox(
          height: 37.h,
        ),
      ]),
    );
  }

  Widget gridCardUi(int index) {
    GridItem item = gridItems[index];

    List<String> parts = item.value.split('/');
    double numerator = double.parse(parts[0]);
    double denominator = double.parse(parts[1]);

    double percentage = numerator / denominator;

    Color progressColor = red; // Default color

    if (percentage >= 0.7) {
      progressColor = green;
    } else if (percentage >= 0.3) {
      progressColor = yellow;
    }

    return Container(
      // height: 200.h,EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 16.h),
      padding: EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(.30),
            blurRadius: 80.6,
            spreadRadius: -30,
            offset: Offset(0, 15),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.green,
                width: 230,
                child: Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: "poppinsRegular",
                    color: grey,
                  ),
                ),
              ),
              Icon(Icons.favorite_rounded,color: red,),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.description,
                    style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: progressColor,
                    ),
                  ),
                  Text(
                    item.value,
                    style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: progressColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 12.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: LinearProgressIndicator(
                    value: percentage,
                    backgroundColor: Color(0xffF7F9FD),
                    valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget buttonUi() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35.5.w, vertical: 13.h),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: white, width: 1),
        boxShadow: [
          BoxShadow(
            color: Color(0xff5478F9).withOpacity(.08),
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
        color: cyan),
    child: Text(
      "Submit",
      style: GoogleFonts.roboto(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: white,
      ),
    ),
  );
}

Widget patientDetailContainer() {
  return Container(
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(12.r),
      boxShadow: [
        BoxShadow(
          color: Color(0xFFE2ECFC).withOpacity(.40),
          blurRadius: 6,
          offset: Offset(0, 4),
        ),
      ],
    ),
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100.h,
              width: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: white,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF98A0B1).withOpacity(.15),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                  BoxShadow(
                    color: Color(0xFF98A0B1).withOpacity(.15),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.r),
                  child: Image.asset(
                    "assets/Images/patient.png",
                    scale: 2,
                    fit: BoxFit.fill,
                  )),
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Emily Thompson",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: "poppinsRegular",
                      color: cyan),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svgIcons/location3.svg"),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "Lorem ipsum dolor.",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "poppinsLight",
                          color: grey),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(
              flex: 15,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 70.h),
              child: Icon(
                Icons.more_vert,
                color: black,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
