import 'package:auto_mynds/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  double progressValue = 0.7;
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: popUpUi2(),
      ),
    );
  }

  Widget popUpUi(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 169.w,vertical: 340.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(color: black, width: 1.35.w),
                ),
                child: SvgPicture.asset("assets/svgIcons/close.svg"),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text("Your Follow up note is Ready!",style: TextStyle(fontFamily: "poppinsRegular",fontSize: 24.sp,color: grey),),
            SizedBox(
              height: 46.h,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 139.h,
                  width: 139.w,
                  child: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    strokeWidth: 10.0,
                    value: 0.7,
                  ),
                ),
                Text(
                  '5 sec',
                  style: TextStyle(fontSize: 24.sp, fontFamily: "poppinsRegular"),
                ),
              ],
            ),
            SizedBox(
              height: 34.h,
            ),
            Text(
              'You will be redirected in 5 seconds',
              style: TextStyle(fontSize: 16.sp, fontFamily: "poppinsRegular",color: yellow),
            ),
            SizedBox(
              height: 35.h,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 140.w,vertical: 16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.r),
                  border: Border.all(color: black, width: 1.w),
                ),
                child: Text("Review Later",style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: black,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget popUpUi1(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 169.w,vertical: 340.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(color: black, width: 1.35.w),
                ),
                child: SvgPicture.asset("assets/svgIcons/close.svg"),
              ),
            ),
            SizedBox(
              height: 3.59.h,
            ),
            Center(child: Text("Working on our Magic !",style: TextStyle(fontFamily: "poppinsRegular",fontSize: 24.sp,color: grey),)),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 139.h,
              width: 139.w,
              child: const CircularProgressIndicator(
                strokeCap: StrokeCap.round,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                strokeWidth: 10.0,
                value: 0.7,
              ),
            ),
            SizedBox(
              height: 52.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 53.w),
              child: Text(
                'You will be redirected to SOAP Note, once processing is finished',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.sp, fontFamily: "poppinsRegular",color: yellow),
              ),
            ),
            SizedBox(
              height: 29.h,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 144.w,vertical: 18.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.r),
                  color: cyan
                ),
                child: Text("Go To Home",style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: white,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget popUpUi2(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 169.w,vertical: 340.h),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        //height: 443.h,
        //width: 412.w,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(24.r),
          ),
        child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select the template type",style: TextStyle(
                  fontFamily: "poppinsRegular",fontSize: 16.sp,
                ),),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(color: black, width: 1.35.w),
                  ),
                  child: SvgPicture.asset("assets/svgIcons/close.svg"),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8), // Add some spacing between text and radio buttons
                RadioListTile<int>(
                  title: Text('Option 1'),
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    // Handle option selection
                    if (value != null) {
                      selectedOption = value;
                    }
                  },
                ),
                RadioListTile<int>(
                  title: Text('Option 2'),
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    // Handle option selection
                    if (value != null) {
                      selectedOption = value;
                    }
                  },
                ),
                RadioListTile<int>(
                  title: Text('Option 3'),
                  value: 3,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    // Handle option selection
                    if (value != null) {
                      selectedOption = value;
                    }
                  },
                ),
              ],
            ),

          ],
        )
      ),
    );
  }
}

