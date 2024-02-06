import 'package:auto_mynds/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  bool _light = false;
  bool isOpened = false;
  int selectedTabIndex = -1;

  var socData;
  var socData1;

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
    ];
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
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 26.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/Images/logo.png",
                        height: 32.h,
                        width: 32.w,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      SvgPicture.asset(
                        "assets/svgIcons/autoMynd.svg",
                        height: 26.h,
                        width: 116.w,
                      ),
                    ],
                  ),
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
                  profileButton(),
                ],
              ),
              SizedBox(
                height: 30.h,
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
                            fontSize: 24.sp,
                            fontFamily: "poppinsRegular",
                            color: grey),
                      ),
                    ],
                  ),
                  driveMode(),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
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
              ),

              SizedBox(
                height: 24.h,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 31.h),
                decoration: BoxDecoration(
                  border: Border.all(color: white, width: 1),
                  color: white.withOpacity(.36),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                    SizedBox(
                      height: 24.h,
                    ),
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
                    // Expanded(
                    //   child: TabBarView(
                    //     controller: _tabController,
                    //     children: [
                    //       ListView.builder(
                    //         itemCount: 10,
                    //         itemBuilder: (context, index) {
                    //           return ListTile(
                    //             title: Text('fgbnm,.'),
                    //           );
                    //         },
                    //       ),
                    //       ListView.builder(
                    //         itemCount: 10,
                    //         itemBuilder: (context, index) {
                    //           return ListTile(
                    //             title: Text('fgbnm,.'),
                    //           );
                    //         },
                    //       ),
                    //     ],
                    //   ),
                    // ),

                  ],
                ),
              ),
            ],
          ),
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
                fontSize: 10.sp, fontFamily: "poppinsRegular", color: grey),
          ),
          Transform.scale(
            scale: .6,
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
                coloredMainButton(),
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
            coloredButtons(type: socData[index]['coloredButtonName']),
            Spacer(flex: 112),
            outlinedButton(buttonName: socData[index]['outlineButtonName']),
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
        height: 24.h,
        width: 24.w,
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
                fontSize: 16.sp, color: grey, fontFamily: "poppinsRegular"),
          ),
          Text(
            "2024, Wed",
            style: TextStyle(
                fontSize: 12.sp, color: grey, fontFamily: "poppinsLight"),
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
        height: 24.h,
        width: 24.w,
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
                fontSize: 16.sp, color: grey, fontFamily: "poppinsRegular"),
          ),
          Text(
            "Broken clouds",
            style: TextStyle(
                fontSize: 12.sp, color: grey, fontFamily: "poppinsLight"),
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
      width: 10.32.w,
      height: 8.26,
    ),
  );
}

Widget vContainer(
    {required String visitDetail,
    required String count,
    required String svgPath}) {
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

Widget coloredButtons({required String type}) {
  Map vName = {
    'Follow-up': green,
    'Eval': yellow,
    'Reassessment': blue,
    'Discharge': red,
  };
  return Container(
    width: 110.w,
    padding: EdgeInsets.symmetric(vertical: 3.h),
    decoration: BoxDecoration(
      color: vName[type],
      borderRadius: BorderRadius.circular(40),
    ),
    child: Center(
        child: Text(type,
            style: TextStyle(
                fontSize: 12.sp, fontFamily: "poppinsRegular", color: white))),
  );
}

Widget coloredMainButton() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 13.h),
    width: 134.w,
    decoration: BoxDecoration(
      color: cyan,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Center(
        child: Text("Start",
            style: TextStyle(
                fontSize: 12.sp, fontFamily: "poppinsRegular", color: white))),
  );
}

Widget outlinedButton({required String buttonName}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 11.h),
    width: 138.w,
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
