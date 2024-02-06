import 'package:auto_mynds/bottomAppBar.dart';
import 'package:auto_mynds/homePage.dart';
import 'package:auto_mynds/login.dart';
import 'package:auto_mynds/mapsScreen.dart';
import 'package:auto_mynds/tabBar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(
    ScreenUtilInit(
        designSize: const Size(744, 1133),
        builder: (_ , child) {
          return MaterialApp(
            home: HomeScreen(),
            debugShowCheckedModeBanner: false,
          );
        }
    ),
  );
}


// void main() {
//   runApp(
//     ScreenUtilInit(
//         designSize: const Size(744, 1133),
//         builder: (_ , child) {
//           return DevicePreview(
//               enabled: !kReleaseMode,
//               builder: (context) => MaterialApp(
//                 home: SoapNote(),
//                 useInheritedMediaQuery: true,
//                 debugShowCheckedModeBanner: false,
//               ));
//         }
//     ),
//   );
// }