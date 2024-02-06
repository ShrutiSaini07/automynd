import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'constants.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  var mList ;
  Completer<GoogleMapController> _completer = Completer();
  static final CameraPosition _cameraPosition =
      const CameraPosition(target: LatLng(30.5161, 76.6598), zoom: 16.4746);

  @override
  void initState() {
    mList = [
      {
        'image' : 'assets/Images/location.png',
        'name'  : '3 Birrel Avenue',
        'direction': 'Turn Right',
        'distance' : 10,
      },
      {
        'image' : 'assets/Images/location.png',
        'name'  : '3 Birrel Avenue',
        'direction': 'Turn Right',
        'distance' : 10,
      },
      {
        'image' : 'assets/Images/location.png',
        'name'  : '3 Birrel Avenue',
        'direction': 'Turn Right',
        'distance' : 10,
      },
      {
        'image' : 'assets/Images/location.png',
        'name'  : '3 Birrel Avenue',
        'direction': 'Turn Right',
        'distance' : 10,
      }
    ];}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 32.w,vertical: 26.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backButton(),
                profileButton(),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 80.h),
                child: Stack(children: [
                  Container(
                    // height: MediaQuery.of(context).size.height*.83,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(
                        color: white,
                        width: 2.w,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: GoogleMap(
                        initialCameraPosition: _cameraPosition,
                        myLocationButtonEnabled: false,
                        onMapCreated: (GoogleMapController controller) {
                          _completer.complete(controller);
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.h,
                    right: 0.w,
                    left: 0.w,
                    child: Container(
                      height: MediaQuery.of(context).size.height*.27,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            black.withOpacity(0.3),
                            black.withOpacity(0.5),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 24.h,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 141.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: mList.length,
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .14),
                        itemBuilder: (context, index) {
                          return slider(index: index);
                        },
                      ),
                    ),
                  ),

                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget slider({required int index}) {
    return Container(
      margin: EdgeInsets.only(right: 19.w),
      // width: 361.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                mList[index]['image'],
                height: 109.w,
                width: 118.w,
              )),
          SizedBox(
            width: 18.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mList[index]['direction'],
                style: TextStyle(
                    fontSize: 12.sp, fontFamily: "poppinsLight", color: black),
              ),
              SizedBox(
                height: 11.h,
              ),
              Container(
                  width: 108.w,
                  child: Text(
                    mList[index]['name'],
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: "poppinsRegular",
                      color: black,
                      height: 1,
                    ),
                  )),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgIcons/locationMaps.svg",
                    width: 10.w,
                    height: 12.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "${mList[index]['distance']} Mtr Left",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: "poppinsLight",
                      color: black.withOpacity(0.6),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: 65.w,
          ),
          SvgPicture.asset(
            "assets/svgIcons/directionArrow.svg",
            height: 17.66.h,
            width: 16.w,
            color: cyan,
          ),
        ],
      ),
    );
  }

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
          offset: Offset(0, 8.34),
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
Widget backButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
    decoration: BoxDecoration(
      color: white.withOpacity(.36),
      border: Border.all(color: white, width: 1),
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
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: Row(
      children: [
        SvgPicture.asset(
          "assets/svgIcons/backIcon.svg",
          color: cyan,
          width: 25.w,
          height: 13.w,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "Back",
          style: TextStyle(
              fontSize: 14.sp, fontFamily: "poppinsLight", color: black),
        ),
      ],
    ),
  );
}
Widget locationContainer({required String image , required String name , required String distance , required String direction}) {
  return
    Container(
      width: 361.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: white,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                image,
                height: 109.w,
                width: 118.w,
              )),
          SizedBox(
            width: 18.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                direction,
                style: TextStyle(
                    fontSize: 14.sp, fontFamily: "poppinsLight", color: black),
              ),
              SizedBox(
                height: 11.h,
              ),
              SizedBox(
                  width: 108.w,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: "poppinsRegular",
                      color: black,
                      height: 1,
                    ),
                  )),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgIcons/locationMaps.svg",
                    width: 10.w,
                    height: 12.h,
                  ),
                  SizedBox(
                    width: 5.43.w,
                  ),
                  Text(
                    "${distance} Mtr Left",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: "poppinsLight",
                      color: black.withOpacity(0.6),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: 65.w,
          ),
          SvgPicture.asset(
            "assets/svgIcons/directionArrow.svg",
            height: 17.66.h,
            width: 16.w,
            color: cyan,
          ),
        ],
      ),
    );
}




