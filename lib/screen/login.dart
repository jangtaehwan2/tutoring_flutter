
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            SizedBox(
              width: 350,
              height: 50,
              child: Text(
                'Hello',
                textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }
}