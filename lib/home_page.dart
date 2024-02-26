import 'package:auto_mynds/constants.dart';
import 'package:auto_mynds/main.dart';
import 'package:auto_mynds/maps_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool _light = false; //Bool value for drive mode switch
  bool isOpenedUc = false; //Bool value for showing soc widget in ListView
  bool isOpenedOc = false; //Bool value for showing soc widget in ListView
  int selectedListIndex = -1;

  var socData; //List name for Upcoming listView
  var socData1; //List name for Open Charts listView

  List<bool> isOpenedUcList =
      []; // List to track open/closed state of soc widgets in Upcoming tab
  List<bool> isOpenedOcList =
      []; // List to track open/closed state of soc widgets in Open Chats tab

  @override
  void initState() {
    socData = [
      {
        'name': 'John Doe',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Reassessment',
        'date': 'Wed Jun 20',
        'header': 'SOC',
        'filledButtonName': 'Start'
      },
      {
        'name': 'shruti',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Eval',
        'date': 'Wed Jun 20',
        'header': 'SOC',
        'filledButtonName': 'Start'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC',
        'filledButtonName': 'Start'
      },
      {
        'name': 'anas',
        'location': '1036 Florida 50',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Reassessment',
        'date': 'Wed Jun 20',
        'header': 'SOC',
        'filledButtonName': 'Start'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC',
        'filledButtonName': 'Start'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC',
        'filledButtonName': 'Start'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC',
        'filledButtonName': 'Start'
      },
    ]; //ListView for Upcoming
    socData1 = [
      {
        'name': 'fgvhbjnkm ghv',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Resume',
        'coloredButtonName': 'Discharge',
        'date': 'Wed Jun 20',
        'header': '80 % Complete',
        'filledButtonName': 'View Details'
      },
      {
        'name': 'ghbjnkknj',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Resume',
        'coloredButtonName': 'Eval',
        'date': 'Wed Jun 20',
        'header': '80 % Complete',
        'filledButtonName': 'View Details'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Resume',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': '80 % Complete',
        'filledButtonName': 'View Details'
      },
      {
        'name': 'anas',
        'location': '1036 Florida 50',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Resume',
        'coloredButtonName': 'Reassessment',
        'date': 'Wed Jun 20',
        'header': '80 % Complete',
        'filledButtonName': 'View Details'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Resume',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': '80 % Complete',
        'filledButtonName': 'View Details'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Resume',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': '80 % Complete',
        'filledButtonName': 'View Details'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Resume',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC',
        'filledButtonName': 'View Details'
      },
    ]; //ListView for Open Charts

    _tabController = TabController(length: 2, vsync: this);

    isOpenedUcList = List.generate(socData.length, (index) => false);
    isOpenedOcList = List.generate(socData1.length, (index) => false);
    super.initState();
  }

  int tabIndex = 0;

  var _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16.w : 32.w,
            vertical: isMobile ? 30.h : 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/Images/logo2.png",
                  height: isMobile ? 24.h : 32.h,
                  width: isMobile ? 116 : 154.w,
                ), // Logo
                Spacer(
                  flex: 4,
                ),
                calender(),
                Spacer(
                  flex: 1,
                ),
                weather(),
                Spacer(
                  flex: 1,
                ),
                profileCard(),
              ],
            ), //Row 1
            SizedBox(
              height: isMobile ? 24.h : 30.h,
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
                          fontSize: isMobile ? 14.sp : 24.sp,
                          fontFamily: "poppinsRegular",
                          color: grey),
                    ),
                  ],
                ),
                driveMode(),
              ],
            ), //Row 2
            SizedBox(
              height: 28.h,
            ),
            isMobile
                ? Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: vContainer(
                                  visitDetail: "Today’s visit",
                                  count: "10",
                                  svgPath: "assets/svgIcons/write.svg")),
                          SizedBox(
                            width: 16.w,
                          ),
                          Expanded(
                              child: vContainer(
                                  visitDetail: "Completed Visits",
                                  count: "10",
                                  svgPath: "assets/svgIcons/check.svg")),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: vContainer(
                                  visitDetail: "Average Visit",
                                  count: "10",
                                  svgPath: "assets/svgIcons/clock.svg")),
                          SizedBox(
                            width: 16.w,
                          ),
                          Expanded(
                              child: vContainer(
                                  visitDetail: "Open Charts",
                                  count: "10",
                                  svgPath: "assets/svgIcons/notes.svg")),
                        ],
                      )
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                          child: vContainer(
                              visitDetail: "Today’s visit",
                              count: "10",
                              svgPath: "assets/svgIcons/write.svg")),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                          child: vContainer(
                              visitDetail: "Completed Visits",
                              count: "10",
                              svgPath: "assets/svgIcons/check.svg")),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                          child: vContainer(
                              visitDetail: "Average Visit",
                              count: "10",
                              svgPath: "assets/svgIcons/clock.svg")),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                          child: vContainer(
                              visitDetail: "Open Charts",
                              count: "10",
                              svgPath: "assets/svgIcons/notes.svg")),
                    ],
                  ), //Row 3
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
              decoration: BoxDecoration(
                border: Border.all(color: white, width: 1),
                color: white.withOpacity(.36),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 2),
                          decoration: BoxDecoration(
                            color: lightCyan,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: green,
                              border: Border.all(color: white, width: 2.w),
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            controller: _tabController,
                            //isScrollable: true,
                            dividerColor: Colors.transparent,
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(
                                child: Text('Upcoming',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: "poppinsRegular",
                                    )),
                              ),
                              Tab(
                                child: Text('Open Charts',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: "poppinsRegular",
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(flex: isMobile ? 0 : 16, child: SizedBox()),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    height: isMobile ? 380.h : 670.h,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: socData.length,
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    // Toggle the state of isOpened for the clicked item
                                    isOpenedUcList[index] =
                                        !isOpenedUcList[index];
                                    // Close other soc widgets
                                    for (int i = 0;
                                        i < isOpenedUcList.length;
                                        i++) {
                                      if (i != index) {
                                        isOpenedUcList[i] = false;
                                      }
                                    }
                                  });
                                },
                                child: isOpenedUcList[index]
                                    ? soc(index: index)
                                    : listSchedule(index: index),
                              );
                            }),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: socData.length,
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    // Toggle the state of isOpened for the clicked item
                                    isOpenedOcList[index] =
                                        !isOpenedOcList[index];
                                    // Close other soc widgets
                                    for (int i = 0;
                                        i < isOpenedOcList.length;
                                        i++) {
                                      if (i != index) {
                                        isOpenedOcList[i] = false;
                                      }
                                    }
                                  });
                                },
                                child: isOpenedOcList[index]
                                    ? soc(index: index)
                                    : listSchedule(index: index),
                              );
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }




  Widget driveMode() {
    return Container(
      padding: EdgeInsets.only(
        left: 10.w,
      ),
      decoration: BoxDecoration(
        color: white.withOpacity(.36),
        border: Border.all(color: white, width: 1),
        borderRadius: BorderRadius.circular(12.r),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Drive Mode",
            style: TextStyle(
                fontSize: isMobile ? 12.sp : 10.sp,
                fontFamily: "poppinsRegular",
                color: grey),
          ),
          Transform.scale(
            scale: .7,
            child: CupertinoSwitch(
              value: _light,
              activeColor: green,
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

  Widget soc({required int index}) {
    Map getColor = {
      'Follow-up': green,
      'Reassessment': blue,
      'Eval': yellow,
      'Discharge': red,
    };

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: grey1, width: 1),
        boxShadow: [
          BoxShadow(
            color: Color(0xffE2ECFC).withOpacity(.4),
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            //onTap: onTap,
            child: Container(
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 26.w, 16.h),
              decoration: BoxDecoration(
                  color: getColor[_tabController.index == 0
                      ? socData[index]['coloredButtonName']
                      : socData1[index]['coloredButtonName']],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _tabController.index == 0
                            ? socData[index]['header']
                            : socData1[index]['header'],
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
                      Text(
                          "${_tabController.index == 0 ? socData[index]['date'] : socData1[index]['date']} - ${_tabController.index == 0 ? socData[index]['time'] : socData1[index]['time']}",
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
                      Text(
                          _tabController.index == 0
                              ? socData[index]['location']
                              : socData1[index]['location'],
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
          SizedBox(
            height: 26.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
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
                              _tabController.index == 0
                                  ? socData[index]['image']
                                  : socData1[index]['image'],
                              scale: 2,
                              fit: BoxFit.fill,
                            ))),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            _tabController.index == 0
                                ? socData[index]['name']
                                : socData1[index]['name'],
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
                  ],
                ),
                isMobile
                    ? SizedBox()
                    : coloredMainButton(
                        filledButtonName: _tabController.index == 0
                            ? socData[index]['filledButtonName']
                            : socData1[index]['filledButtonName']),
              ],
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              height: 1.h,
              decoration: BoxDecoration(
                color: black.withOpacity(0.08),
              ),
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Appointment Note",
              style: TextStyle(
                  fontFamily: "poppinsRegular", fontSize: 14.sp, color: black),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 8.h, 119.w, 18.h),
            child: Text(
              _tabController.index == 0
                  ? socData[index]['info']
                  : socData1[index]['info'],
              style: TextStyle(
                  fontFamily: "poppinsLight", fontSize: 12.sp, color: grey),
            ),
          ),
          isMobile
              ? Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: coloredMainButton(
                      filledButtonName: _tabController.index == 0
                          ? socData[index]['filledButtonName']
                          : socData1[index]['filledButtonName']),
                )
              : SizedBox(),
          Padding(
              padding: EdgeInsets.fromLTRB(16.w, 8.h, 119.w, 18.h),
              child: Text("Tap To know more",
                  style: TextStyle(
                    fontFamily: "poppinsLight",
                    fontSize: 12.sp,
                    color: grey,
                    decoration: TextDecoration.underline,
                    decorationColor: grey,
                    decorationThickness: 1.0,
                  ))),
        ],
      ),
    );
  }

  Widget listSchedule({required int index}) {
    return InkWell(
      //onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.symmetric(
            horizontal: 16.w, vertical: isMobile ? 16.h : 26.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: grey1, width: 1),
          boxShadow: [
            BoxShadow(
              color: Color(0xffE2ECFC).withOpacity(.4),
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: isMobile
            ? Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      patientCard(),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              _tabController.index == 0
                                  ? socData[index]['name']
                                  : socData1[index]['name'],
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
                              Text(
                                  "${_tabController.index == 0 ? socData[index]['date'] : socData1[index]['date']} - ${_tabController.index == 0 ? socData[index]['date'] : socData1[index]['date']}",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: "poppinsLight",
                                      color: black)),
                            ],
                          ),
                          SizedBox(height: 6.h),
                          coloredButtons(
                              type: _tabController.index == 0
                                  ? socData[index]['coloredButtonName']
                                  : socData1[index]['coloredButtonName']),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  outlinedButton(
                      buttonName: _tabController.index == 0
                          ? socData[index]['outlineButtonName']
                          : socData1[index]['outlineButtonName']),
                ],
              )
            : Row(
                children: [
                  patientCard(),
                  Spacer(flex: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          _tabController.index == 0
                              ? socData[index]['name']
                              : socData1[index]['name'],
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
                          Text(
                              "${_tabController.index == 0 ? socData[index]['date'] : socData1[index]['date']} - ${_tabController.index == 0 ? socData[index]['date'] : socData1[index]['date']}",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: "poppinsLight",
                                  color: black)),
                        ],
                      ),
                    ],
                  ),
                  Spacer(flex: 63),
                  coloredButtons(
                      type: _tabController.index == 0
                          ? socData[index]['coloredButtonName']
                          : socData1[index]['coloredButtonName']),
                  Spacer(flex: 112),
                  outlinedButton(
                      buttonName: _tabController.index == 0
                          ? socData[index]['outlineButtonName']
                          : socData1[index]['outlineButtonName']),
                ],
              ),
      ),
    );
  }
}

Widget calender() {
  return Row(
    children: [
      SvgPicture.asset(
        "assets/svgIcons/calender.svg",
        height: isMobile ? 20.h : 24.h,
        width: isMobile ? 20.h : 24.w,
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
                fontSize: isMobile ? 10.sp : 16.sp,
                color: grey,
                fontFamily: "poppinsRegular"),
          ),
          Text(
            "2024, Wed",
            style: TextStyle(
                fontSize: isMobile ? 8.sp : 12.sp,
                color: grey,
                fontFamily: "poppinsLight"),
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
        height: isMobile ? 20.h : 24.h,
        width: isMobile ? 22.w : 24.w,
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
                fontSize: isMobile ? 10.sp : 16.sp,
                color: grey,
                fontFamily: "poppinsRegular"),
          ),
          Text(
            "Broken clouds",
            style: TextStyle(
                fontSize: isMobile ? 8.sp : 12.sp,
                color: grey,
                fontFamily: "poppinsLight"),
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
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: white.withOpacity(.20),
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(8.r),
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
    child: SvgPicture.asset(
      "assets/svgIcons/filter.svg",
      width: isMobile ? 14.w : 10.32.w,
      height: isMobile ? 14.w : 8.26,
    ),
  );
}

Widget vContainer({required String visitDetail, required String count, required String svgPath}) {
  return Container(
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: white.withOpacity(.20),
      border: Border.all(color: white, width: 1),
      borderRadius: BorderRadius.circular(12.r),
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
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              visitDetail,
              style: TextStyle(
                  fontSize: 9.sp, fontFamily: "poppinsLight", color: grey),
            ),
            Text(
              count,
              style: TextStyle(
                  fontSize: 10.sp, fontFamily: "poppinsRegular", color: grey),
            )
          ],
        ),
        Spacer(),
        SvgPicture.asset(
          svgPath,
        ),
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

Widget patientCard() {
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

Widget coloredButtons({required String type}) {Map vName = {'Follow-up': green, 'Eval': yellow, 'Reassessment': blue, 'Discharge': red,};
  return Container(
    width: 110.w,
    padding: EdgeInsets.symmetric(vertical: 3.h),
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: vName[type],width: 1)
    ),
    child: Center(
        child: Text(type,
            style: TextStyle(
                fontSize: 12.sp, fontFamily: "poppinsRegular", color: vName[type]))),
  );
}

Widget outlinedButton({required String buttonName}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 13.h),
    width: isMobile ? double.infinity : 138.w,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: grey, width: 0.5),
    ),
    child: Center(
      child: Text(buttonName,
          style: TextStyle(
              fontSize: 12.sp, fontFamily: "poppinsRegular", color: grey)),
    ),
  );
}

Widget coloredMainButton({required String filledButtonName}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 13.h),
    width: isMobile ? double.infinity : 134.w,
    decoration: BoxDecoration(
      color: cyan,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Center(
        child: Text(filledButtonName,
            style: TextStyle(
                fontSize: 12.sp, fontFamily: "poppinsRegular", color: white))),
  );
}
