import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              // child: Text(
              //   'home',
              //   style: TextStyle(fontSize: 9),
              // ),
            ),
            Tab(
              icon: Icon(
                Icons.chat_bubble_outline_rounded,
                size: 30,
              ),
              // child: Text(
              //   'search',
              //   style: TextStyle(fontSize: 9),
              // ),
            ),
            // Tab(
            //   icon: Icon(
            //     Icons.search_rounded,
            //     size: 30,
            //   ),
            //   // child: Text(
            //   //   'saved',
            //   //   style: TextStyle(fontSize: 9),
            //   // ),
            // ),
            Tab(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              // child: Text(
              //   'list',
              //   style: TextStyle(fontSize: 9),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
