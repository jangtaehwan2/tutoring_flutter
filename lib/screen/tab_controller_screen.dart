import 'package:flutter/material.dart';
import 'package:tutoring_flutter/widget/bottom_bar.dart';
import 'package:tutoring_flutter/screen/home_screen.dart';

class TabControllerScreen extends StatefulWidget {
  const TabControllerScreen({Key? key}) : super(key: key);

  @override
  State<TabControllerScreen> createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeScreen(),
            Container(
              child: Center(
                child: Text('hello'),
              ),
            ),
            Container(
              child: Center(
                child: Text('hello'),
              ),
            ),
            Container(
              child: Center(
                child: Text('hello'),
              ),
            )
          ],
        ),
        bottomNavigationBar: Bottom(),
      ),
    );
  }
}
