import 'package:flutter/material.dart';



class CreateUser extends StatefulWidget {
    static const String id = 'createUser_screen';

  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {

   String firstname;
  String lastname;
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
    return DropdownButton<String>(
                  hint: Text('Please choose a Country'), // Not necessary for Option 1

      items: <String>['A', 'B', 'C', 'D'].map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }

  Widget buildState() {
    return DropdownButton<String>(
      hint: Text('Please choose a state'), // Not necessary for Option 1
      items: <String>['A', 'B', 'C', 'D'].map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("create Employee")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildFirstName(),
                buildLastName(),
                
                buildGender(),
                builDob(),
                buildPhoto(),
                buildAddress(),
                buildCountry(),
                buildState(),
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

                    print(firstname);
                    print(lastname);
                   
                    print(gender);
                    print(dob);
                    print(photo);
                    print(address);
                    print(country);
                    print(state);
                    // Navigator.pushNamed(context, Admin.id);

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
