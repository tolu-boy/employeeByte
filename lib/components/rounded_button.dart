
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.color, this.buttonTitle, this.onpress});
  final Color color;
  final String buttonTitle;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onpress,
          
          minWidth: 200.0,
          height: 42.0,
          child: Text(buttonTitle,style: TextStyle(
            color: Colors.white
          ),
              // 'Register',
              ),
        ),
      ),
    );
  }
}
