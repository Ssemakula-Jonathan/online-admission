import 'package:flutter/material.dart';
import 'package:online_admissions/login.dart';
import 'package:online_admissions/settings.dart';

import 'BottomNavigationBar.dart';
import 'home_page.dart';
import 'myApplication.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Scaffold(
          bottomNavigationBar: BottomNavBar(),
   
 
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text("Welcome"),
            centerTitle: true,
            actions: [
              IconButton(icon: Icon(Icons.home), onPressed: () {
                                                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Welcome(),
                          ),
                        );
              }),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.insert_photo,
                        size: 80.0,
                      ),
                      Text(
                        "Profile Picture",
                        style: TextStyle(
                          color: Colors.blueGrey[900],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Create Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "All Fields are required",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Username",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Password Again",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70.0,
                  padding: EdgeInsets.all(10),
                  child: RawMaterialButton(
                      fillColor: Colors.blueGrey[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      }),
                ),
                Text(
                  "Already created account? Login here",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
