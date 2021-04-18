import 'package:employee_byte/screens/admin.dart';
import 'package:employee_byte/screens/createUser.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/createUser.dart';
import 'screens/search.dart';


void main() async {   
  WidgetsFlutterBinding.ensureInitialized();  
   await Firebase.initializeApp(); 
    runApp(MyApp());
     }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      

initialRoute: WelcomeScreen.id,
  routes: {
    WelcomeScreen.id: (context) => WelcomeScreen(),
    LoginScreen.id: (context) => LoginScreen(),
    Admin.id: (context) =>  Admin(),
    FormScreen.id: (context) =>  FormScreen(),
    CreateUser.id: (context) =>  CreateUser(),
    SearchUser.id: (context) =>  SearchUser(),

  },    
  );
  }
}
