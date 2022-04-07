import 'package:flutter/material.dart';
import 'package:tutoring_flutter/widget/bottom_bar.dart';
import 'package:tutoring_flutter/screen/home_screen.dart';
import 'package:tutoring_flutter/screen/chat_list_screen.dart';

class TabControllerScreen extends StatefulWidget {
  const TabControllerScreen({Key? key}) : super(key: key);

  @override
  State<TabControllerScreen> createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeScreen(),
            ChatListScreen(),
            Container(
              child: Center(
                child: Text('hello'),
              ),
            ),
            // Container(
            //   child: Center(
            //     child: Text('hello'),
            //   ),
            // )
          ],
        ),
        bottomNavigationBar: Bottom(),
      ),
    );
  }
}
