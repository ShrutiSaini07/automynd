import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'constants.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class GridItem {
  String title;
  String description;
  String value;

  GridItem({required this.title, required this.description, required this.value});
}
class _MyGridViewState extends State<MyGridView> {
  List<GridItem> gridItems = [
    GridItem(title: "Medical History of Review", description: "Good Start, carry on !", value: "2/10"),
    GridItem(title: "Another Title", description: "Another Description", value: "5/10"),
    GridItem(title: "Yet Another Title", description: "Yet Another Description", value: "9/10"),
    GridItem(title: "Medical History of Review", description: "Good Start, carry on !", value: "2/10"),
    GridItem(title: "Another Title", description: "Another Description", value: "5/10"),
    GridItem(title: "Yet Another Title", description: "Yet Another Description", value: "9/10"),
    GridItem(title: "Medical History of Review", description: "Good Start, carry on !", value: "2/10"),
    GridItem(title: "Another Title", description: "Another Description", value: "5/10"),
    GridItem(title: "Yet Another Title", description: "Yet Another Description", value: "9/10"),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            mainAxisExtent: 163.h,
          ),
          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            return gridCardUi(index);
          },
        ),
      ),
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
                item.title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: "poppinsRegular",
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 28.h,
                width: 28.w,
                decoration: BoxDecoration(
                  color: Color(0xffD9ECF2),
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: Icon(Icons.ac_unit),
              ),
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
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000, // Adjust the animation duration as needed
                lineHeight: 12.h,
                percent: percentage,
                progressColor: progressColor,
                backgroundColor: Color(0xffF7F9FD),
              ),
            ],
          )
        ],
      ),
    );
  }

}