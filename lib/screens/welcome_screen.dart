import 'package:employee_byte/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:employee_byte/components/rounded_button.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/byte.png'),
                    height: 60.0,
                  ),
                ),
                TyperAnimatedTextKit(
                  text: ['Employee Byte'],
                  speed: Duration(milliseconds: 500),
                  textStyle: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Colors.lightBlueAccent,
              onpress: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              buttonTitle: 'Log in',
            ),
            RoundedButton(
              color: Colors.blueAccent,
              onpress: () {
                Navigator.pushNamed(context, FormScreen.id);
              },
              buttonTitle: 'Create Account',
            ),
          ],
        ),
      ),
    );
  }
}
