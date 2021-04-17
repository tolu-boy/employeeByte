import 'package:flutter/material.dart';
// import 'package:employee_byte/components/rounded_button.dart';
// import 'package:employee_byte/constants.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Admin extends StatefulWidget {
  static const String id = 'admin_screen';

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(top: 40.0, left: 10.0),
        
        child:
         Column(
           children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.supervised_user_circle_rounded, size: 47.0,),
                  
                    label: Text('createe user'),
                    height: 250.0,
                    color: Colors.black,
                    colorBrightness: Brightness.dark,
                    padding: EdgeInsets.all(8.0),
                    
                  ),
                ),
               
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye_sharp, size: 47.0,),
                  
                    label: Text('View users'),
                    height: 250.0,
                    color: Colors.black,
                    colorBrightness: Brightness.dark,
                    padding: EdgeInsets.all(8.0),
                    
                  ),
                ),
               
              ],
        ),


        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.supervised_user_circle_rounded, size: 47.0,),
              
                label: Text('create user'),
                height: 250.0,
                color: Colors.black,
                colorBrightness: Brightness.dark,
                padding: EdgeInsets.all(8.0),
                
              ),
            ),
           
           
            
          ],
        ),
     
           ],
         ),
     
     
      ),
    );
  }
}
