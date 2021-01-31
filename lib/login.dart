import 'package:flutter/material.dart';
import 'package:online_admissions/welcome.dart';

import 'ForgetPassword.dart';
import 'home_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 300.0,
              //color: Colors.blueGrey[900],
              child: Stack(
                children: [
                  Container(

                      //color: Colors.blueGrey[900],
                      child: Column(
                    children: [
                      Container(
                        height: 130.0,
                        color: Colors.blueGrey[900],
                      ),
                      Container(
                        height: 100.0,
                        color: Colors.transparent,
                      ),
                    ],
                  )),
                  Positioned(
                    bottom: 120.0,
                    left: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "lib/assets/images/logo.jpg",
                          height: 90,
                          width: 90,
                        ),
                        Text(
                          "Apply for School",
                          style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
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
                      hintText: "Password",
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
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Welcome(),
                      ),
                    );
                  },
                  child: Text(
                    "Create a new account",
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPassword(),
                      ),
                    );
                  },

                                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    activeColor: Colors.blueGrey[900],
                    value: value,
                    onChanged: (valu) {
                      setState(() {
                        value = !value;
                      });
                    }),
                Text(
                  "Remember me",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
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
