import 'package:employee_byte/screens/admin.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

bool showSpinner = false;

class _LoginScreenState extends State<LoginScreen> {
     String firstname;
    String lastname;
    String email;
    String password;
    String gender;
    String dob;
    String photo;
    String address;
    String country;
    String state;

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget buildFirstName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'FirstName'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'FirstName is Required';
        }

        return null;
      },
      onSaved: (String value) {
        firstname = value;
      },
    );
  }

  Widget buildLastName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'LastName'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'LastName is Required';
        }

        return null;
      },
      onSaved: (String value) {
        lastname = value;
      },
    );
  }

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
        gender = value;
      },
    );
  }

  Widget buildGender() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'gender'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'gender is Required';
        }

        return null;
      },
      onSaved: (String value) {
        gender = value;
      },
    );
  }

  Widget builDob() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Date of Birth'),
      keyboardType: TextInputType.datetime,
      validator: (String value) {
        if (value.isEmpty) {
          return 'DOB is Required';
        }

        return null;
      },
      onSaved: (String value) {
        dob = value;
      },
    );
  }

  Widget buildPhoto() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Photo'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Photo is Required';
        }

        return null;
      },
      onSaved: (String value) {
        photo = value;
      },
    );
  }

  Widget buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      keyboardType: TextInputType.streetAddress,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Address is Required';
        }

        return null;
      },
      onSaved: (String value) {
        address = value;
      },
    );
  }

  Widget buildCountry() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'country'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'country is Required';
        }

        return null;
      },
      onSaved: (String value) {
        country = value;
      },
    );
  }

  Widget buildState() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'state'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'state is Required';
        }

        return null;
      },
      onSaved: (String value) {
        state = value;
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
            key:formKey,
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
                  onPressed: () {
                    if (!formKey.currentState.validate()) {
                      return;
                    }

                   formKey.currentState.save();

                    print(email);
                    print(password);
                    Navigator.pushNamed(context, Admin.id);

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
