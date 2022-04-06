import 'package:flutter/material.dart';
import 'package:tutoring_flutter/screen/home_screen.dart';
import 'package:tutoring_flutter/screen/tab_controller_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset(
              'assets/main.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: Text(
                      'This is Tutoring App',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, letterSpacing: 0.1),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                        decoration: InputDecoration(
                      icon: Icon(Icons.mail_outline),
                      border: UnderlineInputBorder(),
                      hintText: 'ID',
                    )),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.key),
                        border: UnderlineInputBorder(),
                        hintText: 'PASSWORD',
                      ),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                  ),
                  ElevatedButton(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(Icons.key, color: Colors.black, size: 22),
                      Text('Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            letterSpacing: 0.2,
                            fontStyle: FontStyle.italic,
                          )),
                    ]),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side:
                                BorderSide(color: Colors.black, width: 0.5)))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TabControllerScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //   child: Column(
          //     children: [
          //       Flexible(child: Container(
          //       ), flex:1,),
          //       Flexible(child: Container(
          //         child: Center(
          //           child: ElevatedButton(
          //             child: Row(
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                 Icon(Icons.key, color: Colors.black, size: 30),
          //                 Text('Login', style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize: 30,
          //                   letterSpacing: 0.2,
          //                   fontStyle: FontStyle.italic,
          //               )),]
          //             ),
          //             style: ButtonStyle(
          //               backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
          //               shape: MaterialStateProperty.all(RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(18.0),
          //                 side: BorderSide(color: Colors.black, width: 1.5)
          //               ))
          //             ),
          //             onPressed: () {},
          //           ),
          //         ),
          //       ), flex: 5,
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
