import 'package:flutter/material.dart';
import 'package:tutoring_flutter/widget/bottom_bar.dart';
import 'package:tutoring_flutter/screen/home_screen.dart';
import 'package:tutoring_flutter/screen/login_screen.dart';
import 'package:tutoring_flutter/screen/login.dart';
import 'package:tutoring_flutter/screen/tab_controller_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController? controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Tutoring',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      home: LoginScreen()
    );
  }
}


//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tutoring',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Hello Tutoring'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           ElevatedButton(
//             child: Text('Login'),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => LoginPage()));
//             },
//           ),
//           // ElevatedButton(
//           //   child: Text('List'),
//           //   onPressed: () {
//           //     Navigator.push(context,
//           //         MaterialPageRoute(builder: (context) => RandomWords()));
//           //   },
//           // ),
//         ],
//       )),
//     );
//   }
// }
