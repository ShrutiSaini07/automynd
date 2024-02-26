import 'package:auto_mynds/constants.dart';
import 'package:auto_mynds/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with TickerProviderStateMixin {
  bool isOpened = false; //Bool value for showing soc widget in ListView
  int selectedTabIndex = -1;

  var socData; //List name for Upcoming listView
  var socData1; //List name for Open Charts listView

  @override
  void initState() {
    socData = [
      {
        'name': 'John Doe',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Discharge',
        'date': 'Wed Jun 20',
        'header': 'SOC'
      },
      {
        'name': 'shruti',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Eval',
        'date': 'Wed Jun 20',
        'header': 'SOC'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC'
      },
      {
        'name': 'anas',
        'location': '1036 Florida 50',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info':
            'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Reassessment',
        'date': 'Wed Jun 20',
        'header': 'SOC'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC'
      },
    ]; //ListView for Upcoming
    socData1 = [
      {
        'name': 'John Doe',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Resume',
        'coloredButtonName': 'Discharge',
        'date': 'Wed Jun 20',
        'header': '80 % Complete'
      },
      {
        'name': 'shruti',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Eval',
        'date': 'Wed Jun 20',
        'header': '80 % Complete'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': '80 % Complete'
      },
      {
        'name': 'anas',
        'location': '1036 Florida 50',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info':
            'Client was referred by Mercy Hospital , lives with his family  of 4 kids and 1 pet dog.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Reassessment',
        'date': 'Wed Jun 20',
        'header': '80 % Complete'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': '80 % Complete'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': '80 % Complete'
      },
      {
        'name': 'anas',
        'location': 'Hospital A',
        'time': '10:00 AM',
        'image': 'assets/Images/patient.png',
        'info': 'tap to know more.',
        'outlineButtonName': 'Start',
        'coloredButtonName': 'Follow-up',
        'date': 'Wed Jun 20',
        'header': 'SOC'
      },
    ]; //ListView for Open Charts
    super.initState();
  }

  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100.h, right: 48.w, left: 48.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 278.w,
              //padding: EdgeInsets.only(right: 226.w),
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
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text('Upcoming',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "poppinsRegular",
                        )),
                  ),
                  Tab(
                    child: Text('Open Charts',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "poppinsRegular",
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
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
                            if (isOpened) {
                              isOpened = false;
                            } else {
                              isOpened = true;
                              selectedTabIndex = index;
                            }
                          });
                        },
                        child: isOpened && selectedTabIndex == index
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
                            if (isOpened) {
                              isOpened = false;
                            } else {
                              isOpened = true;
                              selectedTabIndex = index;
                            }
                          });
                        },
                        child: isOpened && selectedTabIndex == index
                            ? soc(index: index)
                            : listSchedule(index: index),
                      );
                    }),
              ],
            ))
          ],
        ),
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
                  color: getColor[socData[index]['coloredButtonName']],
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
                        socData[index]['header'],
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
                          "${socData[index]['date']} - ${socData[index]['time']}",
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
                      Text(socData[index]['location'],
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
                              socData[index]['image'],
                              scale: 2,
                              fit: BoxFit.fill,
                            ))),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(socData[index]['name'],
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
                //coloredMainButton(filledButtonName: ),
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
              socData[index]['info'],
              style: TextStyle(
                  fontFamily: "poppinsLight", fontSize: 12.sp, color: black),
            ),
          ),
        ],
      ),
    );
  }

  Widget listSchedule({required int index}) {
    return InkWell(
      //onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 26.h),
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
        child: Row(
          children: [
            patientCard(),
            Spacer(flex: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(socData[index]['name'],
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
                        "${socData[index]['date']} - ${socData[index]['time']}",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "poppinsLight",
                            color: black)),
                  ],
                ),
              ],
            ),
            Spacer(flex: 63),
            coloredButtons(type: socData[index]['filledButtonName']),
            Spacer(flex: 112),
            outlinedButton(buttonName: socData[index]['outlineButtonName']),
          ],
        ),
      ),
    );
  }
}
