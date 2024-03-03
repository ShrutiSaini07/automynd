import 'package:auto_mynds/constants.dart';
import 'package:auto_mynds/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {


  @override
  Widget build(BuildContext context) {
    // return Scaffold();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: showTimer(),
                        );
                      });
                },
                child: Text("Button 1")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: homePopUp(context: context),
                        );
                      });
                },
                child: Text("Button 2")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: selectionPopUp(context: context),
                        );
                      });
                },
                child: Text("Button 3")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: successPopUp(context: context),
                        );
                      });
                },
                child: Text("Button 4")),
          ],
        ),
      ),
    );
  }
}



class CrossButton extends StatefulWidget {
  CrossButton({required this.onTap});

  VoidCallback onTap;

  @override
  State<CrossButton> createState() => _CrossButtonState();
}
class _CrossButtonState extends State<CrossButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(left: 350.w),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(color: black, width: 1.35.w),
        ),
        child: SvgPicture.asset("assets/svgIcons/close.svg"),
      ),
    );
  }
}


class showTimer extends StatefulWidget {
  const showTimer({super.key});

  @override
  State<showTimer> createState() => _showTimerState();
}
class _showTimerState extends State<showTimer> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int count = 5;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);

    _controller.forward();

    _controller.addListener(() {
      setState(() {
        count = (_controller.value * 5).ceil();
      });
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CrossButton(onTap: () {
            Navigator.pop(context);
          }),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "Your Follow up note is Ready!",
            style: TextStyle(
                fontFamily: "poppinsRegular", fontSize: 24.sp, color: grey),
          ),
          SizedBox(
            height: 46.h,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 139.h,
                width: 139.w,
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.round,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  strokeWidth: 10.0,
                  value: _animation.value,
                ),
              ),
              Text(
                "$count sec",
                style: TextStyle(fontSize: 24.sp, fontFamily: "poppinsRegular"),
              ),
            ],
          ),
          SizedBox(
            height: 34.h,
          ),
          Container(
            width: 266.w,
            child: Text(
              'You will be redirected in 5 seconds',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.sp, fontFamily: "poppinsRegular", color: yellow),
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 150.w, vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.r),
                border: Border.all(color: black, width: 1.w),
              ),
              child: Text(
                "Review Later",
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


Widget homePopUp({required BuildContext context}) {
  //double progressValue = 0.7;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(24.r),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CrossButton(onTap: () {
          Navigator.pop(context);
        }),
        SizedBox(
          height: 4.h,
        ),
        Text(
          "Working on our Magic !",
          style: TextStyle(
              fontFamily: "poppinsRegular", fontSize: 24.sp, color: grey),
        ),
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
            value:0.7,
          ),
        ),
        SizedBox(
          height: 52.h,
        ),
        Container(
          //padding: EdgeInsets.symmetric(horizontal: 50.w),
          width: 266.w,
          child: Text(
            'You will be redirected to SOAP Note, once processing is finished',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp, fontFamily: "poppinsRegular", color: yellow),
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        buttonUi(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          horizontalPadding: 144.w, // Specify your desired horizontal padding
          verticalPadding: 18.h, // Specify your desired vertical padding
          buttonText: "Go to Home",
        )
      ],
    ),
  );
}

Widget selectionPopUp({required BuildContext context}) {
  int selectedOption = 1;
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "Select the template type",
                style: TextStyle(
                  fontFamily: "poppinsRegular",
                  fontSize: 16.sp,
                ),
              ),
              CrossButton(onTap: () {
                Navigator.pop(context);
              }),
            ],
          ),
          Column(
            children: [
              SizedBox(
                  height:
                  8), // Add some spacing between text and radio buttons
              RadioListTile<int>(
                title: Text('SOAP'),
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
                title: Text('Follow Up / TX'),
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
                title: Text('Visit Summary'),
                value: 2,
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
      ));
}

Widget successPopUp({required BuildContext context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(24.r),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CrossButton(onTap: () {
          Navigator.pop(context);
        }),
        SizedBox(
          height: 4.h,
        ),
        Text(
          "Success!",
          style: TextStyle(
              fontFamily: "poppinsRegular", fontSize: 24.sp, color: green),
        ),
        SizedBox(
          height: 15.h,
        ),
        Lottie.asset(
          'assets/Lottie/notebook.json',
          width: 150.w,
          height: 150.h,
          fit: BoxFit.cover,
        ),
        Container(
          width: 266.w,
          child: Text(
            'Sweet! You have completed follow up note for Emily Thomason!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: "poppinsRegular",
              color: grey,
            ),
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        buttonUi(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          horizontalPadding: 144.w, // Specify your desired horizontal padding
          verticalPadding: 18.h, // Specify your desired vertical padding
          buttonText: "Go to Home",
        )
      ],
    ),
  );
}

Widget buttonUi({required VoidCallback onTap, required double horizontalPadding, required double verticalPadding, required String buttonText,}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      decoration: BoxDecoration(
          border: Border.all(color: white, width: 1),
          borderRadius: BorderRadius.circular(13.r), color: cyan,
          boxShadow: [
          BoxShadow(
          color: Color(0xff5478F9).withOpacity(.08),
      blurRadius: 8,
      offset: Offset(2, 2),)]
      ),
      child: Text(
        buttonText,
        style: GoogleFonts.roboto(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: white,
        ),
      ),
    ),
  );
}





