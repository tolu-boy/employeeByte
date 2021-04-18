import 'package:employee_byte/screens/admin.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget buildpassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'gender is Required';
        }

        return null;
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildEmail(),
                buildpassword(),
                SizedBox(height: 100),
                RaisedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                    onPressed: () async {
                      if (!formKey.currentState.validate()) {
                        return;
                      }

                      formKey.currentState.save();

                      Navigator.pushNamed(context, Admin.id);

                      //Send to API
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
