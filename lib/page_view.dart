import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
   PageViewScreen({Key? key}) : super(key: key);

  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> with TickerProviderStateMixin{
  PageController _pageController = PageController();
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Row(
              children: [
                // Buttons on the side
                Container(
                  color: Colors.grey[200],
                  width: 80,
                  child: ListView(
                    children: [
                      TextButton(
                        onPressed: () {
                          _pageController.jumpToPage(0);
                        },
                        child: Text('Page 1'),
                      ),
                      TextButton(
                        onPressed: () {
                          _pageController.jumpToPage(1);
                        },
                        child: Text('Page 2'),
                      ),
                      TextButton(
                        onPressed: () {
                          _pageController.jumpToPage(2);
                        },
                        child: Text('Page 3'),
                      ),
                    ],
                  ),
                ),
                // Vertical PageView
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        color: Colors.blue,
                        child: Center(
                          child: Text('Page 1'),
                        ),
                      ),
                      Container(
                        color: Colors.green,
                        child: Center(
                          child: Text('Page 2'),
                        ),
                      ),
                      Container(
                        color: Colors.orange,
                        child: Center(
                          child: Text('Page 3'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(child: Text('Content for Tab 2')),
            Center(child: Text('Content for Tab 3')),
          ],
        ),

      ),
    );
  }
}
