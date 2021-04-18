import 'package:employee_byte/screens/createUser.dart';
import 'package:employee_byte/screens/search.dart';
import 'package:employee_byte/screens/welcome_screen.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.lightBlueAccent,
            indicatorWeight: 3,
            tabs: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Manage',
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Admin page',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          color: Colors.white,
          child: TabBarView(children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 2,
                  children: [
                    _buildSingleContainer(
                        context: context,
                        count: '10',
                        icon: Icons.person,
                        name: 'Users'),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, CreateUser.id);
                      },
                      child: _buildSingleContainer(
                          context: context,
                          count: '',
                          icon: Icons.person_add_alt_1_rounded,
                          name: 'Create'),
                    ),
                    _buildSingleContainer(
                        context: context,
                        count: '',
                        icon: Icons.remove_red_eye_rounded,
                        name: 'View'),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SearchUser.id);
                      },
                      child: _buildSingleContainer(
                          context: context,
                          count: '',
                          icon: Icons.search_off_rounded,
                          name: 'Search'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, WelcomeScreen.id);
                      },
                                          child: _buildSingleContainer(
                          context: context,
                          count: '',
                          icon: Icons.logout,
                          name: 'logout'),
                    ),
                    _buildSingleContainer(
                        context: context,
                        count: '',
                        icon: Icons.pan_tool_sharp,
                        name: 'manage')
                  ],
                )),
            Container(
              child: Center(
                child: Text('Coming Soon'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Widget _buildSingleContainer(
    {IconData icon, String count, String name, BuildContext context}) {
  return Card(
    color: Colors.white,
    child: Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.grey,
                size: 30.0,
              ),
              SizedBox(width: 10.0),
              Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Text(
            count,
            style: TextStyle(
              fontSize: 20,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ),
  );
}
