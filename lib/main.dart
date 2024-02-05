import 'package:auto_mynds/homePage.dart';
import 'package:auto_mynds/mapsScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() {
  runApp(const MyApp());
}

// void main() {
//   runApp(
//     ScreenUtilInit(
//         designSize: const Size(744, 1133),
//         builder: (_ , child) {
//           return DevicePreview(
//               enabled: !kReleaseMode,
//               builder: (context) => MaterialApp(
//                 home: HomeScreen(),
//                 useInheritedMediaQuery: true,
//                 debugShowCheckedModeBanner: false,
//               ));
//         }
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return ScreenUtilInit(
        designSize: const Size(744, 1133),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          );
        },
        child: MapScreen(),
      );
    }
}

