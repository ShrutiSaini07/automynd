
import 'package:auto_mynds/Modules/follow_up_note/pages/exmaple.dart';
import 'package:auto_mynds/follow_up_note.dart';
import 'package:auto_mynds/bottom_app_bar.dart';
import 'package:auto_mynds/Modules/follow_up_note/card_view.dart';
import 'package:auto_mynds/home_page.dart';
import 'package:auto_mynds/login_page.dart';
import 'package:auto_mynds/maps_page.dart';
import 'package:auto_mynds/page_view.dart';
import 'package:auto_mynds/stepper.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';



void main() {
  runApp(
    //Used ScreenUtil Package for making adaptive screen for all devices
      MyApp()
  );
}

var isMobile;


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(builder: (BuildContext context, SizingInformation sizingInformation){

      isMobile = sizingInformation.deviceScreenType == DeviceScreenType.mobile;

      return ScreenUtilInit(
          designSize: Size(
              isMobile ? 430 : 744, isMobile ? 932 : 1133
            // 744, 1133
          ), //taken reference of iPad(mini) 6th gen having 744 X 1133 pixels
          builder: (_ , child) {
            return MaterialApp(
              home: PageViewScreen(),
              debugShowCheckedModeBanner: false,
            );
          }
      );
    });
  }
}



// void main() {
//   runApp(
//     ScreenUtilInit(
//       designSize: const Size(744, 1133),
//       builder: (_, child) {
//         return DevicePreview(
//           enabled: !kReleaseMode,
//           builder: (context) {
//             return ResponsiveBuilder(
//               builder: (context, sizingInformation) {
//                 Size designSize;
//
//                 // Check if the device is a phone or tablet and set the designSize accordingly
//                 if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
//                   designSize = const Size(390, 844);
//                 } else {
//                   designSize = const Size(744, 1133);
//                 }
//
//                 return MaterialApp(
//                   home: HomeScreen(),
//                   builder: (context, child) {
//                     // Use the dynamically determined designSize
//                     return ScreenUtilInit(
//                       designSize: designSize, // Handle potential null value
//                     );
//                   },
//                   useInheritedMediaQuery: true,
//                   debugShowCheckedModeBanner: false,
//                 );
//               },
//             );
//           },
//         );
//       },
//     ),
//   );
// }
