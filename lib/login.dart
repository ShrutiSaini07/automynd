import 'package:auto_mynds/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 123.h, left: 200.w, right: 200.w),
          child: Row(
            children: [
              Image.asset(
                "assets/Images/logo.png",
                width: 76.w,
                height: 76.h,
              ),
              SizedBox(
                height: 18.w,
              ),
              SvgPicture.asset(
                "assets/svgIcons/autoMynd.svg",
                width: 328,
                height: 58.w,
              ),
            ],
          ),
        ),
        infoContainer(),
      ]),
    );
  }

  Widget infoContainer() {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, right: 40.w,left: 40.w,bottom: 120.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(width: 1.h,color: white),
          color: white.withOpacity(.36),
          boxShadow: [
            BoxShadow(
              color: white.withOpacity(.10),
              blurRadius: 1.04,
              offset: Offset(0, 1.04),
            ),
            BoxShadow(
              color: white.withOpacity(.25),
              blurRadius: 1.04,
              offset: Offset(0, 1.04),
            ),
            BoxShadow(
              color: black.withOpacity(.04),
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/Images/doctors.png",
                  height: 220.h,
                  width: 366.w,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 2.h,
                  color: black.withOpacity(.08),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Log in to AutoMynd",
                  style: TextStyle(
                      fontFamily: "poppinsRegular",
                      fontSize: 22.sp,
                      color: grey),
                ),
                SizedBox(
                  height: 30.h,
                ),
                emailBlock(),
                SizedBox(
                  height: 24.h,
                ),
                passwordBlock(),
                SizedBox(
                  height: 24.h,
                ),
                loginButton(),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Forget Password?",
                  style: TextStyle(
                      fontFamily: "poppinsLight", fontSize: 14.sp, color: grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget emailBlock() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Email Address",
          style: TextStyle(
              fontFamily: "poppinsRegular", fontSize: 12.sp, color: grey),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          height: 32.h,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(8.r)
          ),
          child: TextFormField(
            controller: emailController,
            style: TextStyle(
              fontSize: 12.sp,
              color: black,
              fontFamily: "poppinsLight",
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 10.h, bottom: 10.h),
              hintText: "Type here...",
              border: InputBorder.none,
              hintStyle: TextStyle(
                fontSize: 12.sp,
                color: grey,
                fontFamily: "poppinsLight",
                // letterSpacing: 1
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: black.withOpacity(.12),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: green,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ),

      ],
    );
  }

  Widget passwordBlock() {
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: TextStyle(
                fontFamily: "poppinsRegular", fontSize: 12.sp, color: grey),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            height: 32.h,
            decoration: BoxDecoration(
                color: white,
              borderRadius: BorderRadius.circular(8.r)
            ),
            child: TextFormField(
              controller: passwordController,
              style: TextStyle(
                fontSize: 12.sp,
                color: black,
                fontFamily: "poppinsLight",
              ),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: SvgPicture.asset(
                    'assets/svgIcons/password.svg',
                    width: 12.w,
                    height: 10.h,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
                contentPadding: EdgeInsets.only(
                    left: 16.w, right: 16.w, top: 10.h, bottom: 10.h),
                hintText: "Type here...",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  color: grey,
                  fontFamily: "poppinsLight",
                  // letterSpacing: 1
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: black.withOpacity(.12),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: green,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}

Widget loginButton() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 125.w),
    decoration: BoxDecoration(
      color: cyan,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Text("Login",
        style: TextStyle(
            fontSize: 12.sp, fontFamily: "poppinsRegular", color: white)),
  );
}

