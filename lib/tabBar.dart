import 'package:auto_mynds/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100.h, right: 48.w, left: 48.w),
        child: Column(
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
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('fgbnm,.'),
                    );
                  },
                ),
                 ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('fgbnm,.'),
                      );
                    },
                  ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
