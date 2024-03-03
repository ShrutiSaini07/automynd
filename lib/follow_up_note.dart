import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'main.dart';
import 'maps_page.dart';

class FollowUpScreen extends StatefulWidget {
  FollowUpScreen({required this.cardMap});

  Map cardMap;

  @override
  State<FollowUpScreen> createState() => _FollowUpScreenState();
}



class _FollowUpScreenState extends State<FollowUpScreen> {

  int currStep = 0;
  int questCount = 3;
  int cardRowCount = 1;

  var counterCtrl = TextEditingController();
  int counterValue = 0;

  List<List<TextEditingController>> textControllers = [];

  initState(){
    counterCtrl.text=counterValue.toString();
  }

  incrementStep(){
    if (currStep<(questCount-1)){
      setState(() {
        currStep++;
      });
    }
  }
  decrementStep(){
    if (currStep>0){
      setState(() {
        currStep--;
      });
    }
  }
  tapStep(int currIndex){
    setState(() {
      currStep = currIndex;
    });
  }

  void showListItems() {
    for (var rows in textControllers) {
      for (var ctrls in rows){
        print(ctrls.text);
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Padding(
            padding: isMobile
                ? EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h)
                : EdgeInsets.symmetric(horizontal: 32.w, vertical: 26.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backButton(context),
                  isMobile ? profileCard() : profileButton(),
                ],
              ),
                  SizedBox(
                    height: 42.h,
                  ),
                  progressCard(),

            ]),
        )
    );
  }
  Widget progressCard(){

    var percentage = widget.cardMap["numerator"] / widget.cardMap["denominator"];

    Color progressColor = red; // Default color

    if (percentage >= 0.7) {
      progressColor = green;
    } else if (percentage >= 0.3) {
      progressColor = yellow;
    }

    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
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
                widget.cardMap["title"],
                style: TextStyle(
                  fontSize: 24.sp,
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
          SizedBox(
            height: 40.h ,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
          widget.cardMap["description"],
                    style: GoogleFonts.roboto(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: progressColor,
                    ),
                  ),
                  Text(
                    "${widget.cardMap["numerator"]}/${widget.cardMap["denominator"]}",
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
    );
  }

}




