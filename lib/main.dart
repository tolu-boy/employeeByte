import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),

initialRoute: WelcomeScreen.id,
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    WelcomeScreen.id: (context) => WelcomeScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    LoginScreen.id: (context) => LoginScreen(),
RegistrationScreen.id: (context) =>  RegistrationScreen(),
    // When navigating to the "/second" route, build the SecondScreen widget.


  },    
  );
  }
}
