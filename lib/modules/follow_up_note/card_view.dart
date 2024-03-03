import 'package:auto_mynds/constants.dart';
import 'package:auto_mynds/follow_up_note.dart';
import 'package:auto_mynds/maps_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dialogBox.dart';
import 'main.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}



class _CardViewState extends State<CardView> {
  List<Map<String, dynamic>> gridItems = [
    {"title": "Vitals", "description": "Good Start, carry on !", "numerator": 2, "denominator": 10},
    {"title": "Medical History of Review", "description": "Good Start, carry on !", "numerator": 5, "denominator": 10},
    {"title": "Subjective ", "description": "Good Start, carry on !", "numerator": 9, "denominator": 10},
    {"title": "Review of Systems ", "description": "Good Start, carry on !", "numerator": 2, "denominator": 10},
    {"title": "Interventions and Goals", "description": "Good Start, carry on !", "numerator": 9, "denominator": 10},
    {"title": "Orders", "description": "Good Start, carry on !", "numerator": 9, "denominator": 10},
    {"title": "Assessment/Summary", "description": "Good Start, carry on !", "numerator": 9, "denominator": 10},
    {"title": "Plan", "description": "Good Start, carry on !", "numerator": 9, "denominator": 10},

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
              backButton(context),
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
              buttonUi(
                onTap: () {

                },
                horizontalPadding: 36.w, // Specify your desired horizontal padding
                verticalPadding: 13.h, // Specify your desired vertical padding
                buttonText: "Submit",
              ),
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
      // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Row(
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
        ),
        // SizedBox(
        //   height: 32.h,
        // ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
          height: 2.h,
          color: white2,
        ),
        Container(
          height: 450.h,
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                mainAxisExtent: 190.h
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
    Map<String, dynamic> item = gridItems[index];

    var numerator = item["numerator"];
    var denominator = item["denominator"];

    var percentage = numerator / denominator;

    Color progressColor = red; // Default color

    if (percentage >= 0.7) {
      progressColor = green;
    } else if (percentage >= 0.3) {
      progressColor = yellow;
    }

    return
      InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FollowUpScreen(cardMap: {
                "title" : item["title"],
                "description" : item["description"],
                "numerator" : item["numerator"],
                "denominator" : item["denominator"],
              })
            ),
          );


        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
          padding: EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.10),
                blurRadius: 80.6,
                spreadRadius: 20.0,
                offset: Offset(0, 15),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item["title"]!,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "poppinsRegular",
                      color: grey,
                    ),
                  ),
                  Container(
                    height: 28.h,
                    width: 28.w,
                    decoration: BoxDecoration(
                      color: Color(0xffD9ECF2),
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Icon(Icons.favorite, color: red, size: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item["description"]!,
                        style: GoogleFonts.roboto(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: progressColor,
                        ),
                      ),
                      Text(
                        "${item["numerator"]}/${item["denominator"]}",
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
                        borderRadius: BorderRadius.circular(8.r),
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
        ),
      );
  }
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
