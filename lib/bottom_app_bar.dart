import 'package:auto_mynds/card_view.dart';
import 'package:auto_mynds/home_page.dart';
import 'package:auto_mynds/login_page.dart';
import 'package:auto_mynds/main.dart';
import 'package:auto_mynds/maps_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'constants.dart';
class bottomAppBar extends StatefulWidget {
  const bottomAppBar({super.key});

  @override
  State<bottomAppBar> createState() => _bottomAppBarState();
}

class _bottomAppBarState extends State<bottomAppBar> {

  int selectedPageIndex = 0;

  List<Widget> pagesList = [
    HomePage(),
    CardView(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesList[selectedPageIndex],
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: isMobile? 15.w:32.w, vertical: isMobile? 16.h:24.h),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(22.r),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF5478F9).withOpacity(.08),
              blurRadius: 8,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeIcon(),
              CalendarIcon(),
              LocationIcon(),
              ChatIcon(),
              ClockIcon(),
            ],
          ),
        ),
      ),
    );
  }
  Widget HomeIcon(){
    return InkWell(
      onTap: (){
        setState(() {
          selectedPageIndex = 0;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
        decoration: BoxDecoration(
          color: selectedPageIndex==0 ? green : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset("assets/svgIcons/Home.svg", color: selectedPageIndex==0 ? white : grey,),
      ),
    );
  }

  Widget CalendarIcon(){
    return InkWell(
      onTap: (){
        setState(() {
          selectedPageIndex = 1;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
        decoration: BoxDecoration(
          color: selectedPageIndex==1 ? green : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset("assets/svgIcons/calendar2.svg", color: selectedPageIndex==1 ? white : grey,),
      ),
    );
  }

  Widget LocationIcon(){
    return InkWell(
      onTap: (){
        setState(() {
          selectedPageIndex = 2;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
        decoration: BoxDecoration(
          color: selectedPageIndex==2 ? green : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset("assets/svgIcons/location2.svg", color: selectedPageIndex==2 ? white : grey,),
      ),
    );
  }

  Widget ChatIcon(){
    return InkWell(
      onTap: (){
        setState(() {
          selectedPageIndex = 3;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
        decoration: BoxDecoration(
          color: selectedPageIndex==3 ? green : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset("assets/svgIcons/chat.svg", color: selectedPageIndex==3 ? white : grey,),
      ),
    );
  }

  Widget ClockIcon(){
    return InkWell(
      onTap: (){
        setState(() {
          selectedPageIndex = 4;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
        decoration: BoxDecoration(
          color: selectedPageIndex==4 ? green : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset("assets/svgIcons/clock2.svg", color: selectedPageIndex==4 ? white : grey,),
      ),
    );
  }

}

