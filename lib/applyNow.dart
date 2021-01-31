import 'package:flutter/material.dart';
import 'package:online_admissions/login.dart';
import 'home_page.dart';
import 'welcome.dart';

class ApplyNow extends StatefulWidget {
  @override
  _ApplyNowState createState() => _ApplyNowState();
}

class _ApplyNowState extends State<ApplyNow> {
  bool value = true;
  bool male = true;
  bool female =  false;
  bool primary = true;
  bool olevel = false;
  bool alevel = true;
  bool disablityYes = false;
  bool disablityNo = true;
  bool terms = false;
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text("ApplyNow"),
            centerTitle: true,
            actions: [
              IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
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
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Please choose the level you are applying for.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          FlatButton(
                            shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    primary ? Colors.transparent : Colors.red,
                              ),
                            ),
                            color: primary ? Colors.blueGrey[900] : Colors.red,
                            onPressed: () {
                              setState(() {
                                primary = !primary;
                                olevel = true;
                                alevel = true;
                              });
                            },
                            child: Text(
                              "PRIMARY",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueGrey[100],
                              ),
                            ),
                          ),
                          FlatButton(
                            shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: olevel ? Colors.transparent : Colors.red,
                              ),
                            ),
                            color: olevel ? Colors.blueGrey[900] : Colors.red,
                            onPressed: () {
                              setState(() {
                                olevel = !olevel;
                                primary = true;
                                alevel = true;
                              });
                            },
                            child: Text(
                              "O LEVEL",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueGrey[100],
                              ),
                            ),
                          ),
                          FlatButton(
                            shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: alevel ? Colors.transparent : Colors.red,
                              ),
                            ),
                            color: alevel ? Colors.blueGrey[900] : Colors.red,
                            onPressed: () {
                              setState(() {
                                alevel = !alevel;
                                primary = true;
                                olevel = true;
                              });
                            },
                            child: Text(
                              "A LEVEL",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueGrey[100],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.blueGrey[900])
                            //color:Colors.blueGrey[900],
                            ),
                        child: ListTile(
                          title: Text("SELECT CLASS",
                              style: TextStyle(
                                color: Colors.blueGrey[900],
                              )),
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                          alignment: Alignment.topLeft,
                          child:
                              Text("Please select the school of your choice.")),
                      SizedBox(height: 10.0),
                      Container(
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.blueGrey[900])
                            //color:Colors.blueGrey[900],
                            ),
                        child: ListTile(
                          title: Text("SELECT SCHOOL",
                              style: TextStyle(
                                color: Colors.blueGrey[900],
                              )),
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "APPLICATION FOR ADMISSION",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "SECTION 1: STUDENTS DETAILS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "First Name",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Middle Name",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Last Name",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text("Date of Birth*"),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        //width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.blueGrey[900])
                            //color:Colors.blueGrey[900],
                            ),
                        child: ListTile(
                          title: Text(
                            "12 May 1998",
                            style: TextStyle(
                              color: Colors.blueGrey[900],
                            ),
                          ),
                          trailing: Icon(
                            Icons.calendar_today,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Gender*",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        height: 60.0,
                        child: Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                  value: 0,
                                  title: Text("Male"),
                                  groupValue: male,
                                  onChanged: (value) {
                                    setState(() {
                                      print(value);
                                      male = !male;
                                      female = false;
                                    });
                                  }),
                            ),
                            Expanded(
                              child: RadioListTile(
                                  value:1,
                                  title: Text("Female"),
                                  groupValue: male,
                                  onChanged: (value) {
                                    setState(() {
                                      print(value);
                                      female = true;
                                      male = false;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Address",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Nationality",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Country of residence",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Student E-mail",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Mobile Number",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text("Any kind of disablity"),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: disablityNo,
                                onChanged: (value) {
                                  setState(() {
                                   disablityNo = !disablityNo;
                                   
                                  });
                                  },
                              ),
                              Text("NO"),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: disablityYes,
                                onChanged: (value) {
                                  setState(() {
                                  disablityYes = !disablityYes;

                                  });
                                },
                              ),
                              Text("Yes"),
                            ],
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "if yes, mention it",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "SECTION 2: PARENTS DETAILS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Full Name",
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
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Contact details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Phone # 1",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Phone # 2",
                        ),
                      ),

                      SizedBox(height: 10.0),
                       Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Address",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "City",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Country",
                        ),
                      ),
                     
                      SizedBox(height: 10.0),

Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "NIN Number",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      
Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Nationality",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Nationality",
                        ),
                      ),
                      SizedBox(height: 10.0),
                      
                                            Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "SECTION 3: FORMER SCHOOL DETAILS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                                 TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Former schoold name*",
                        ),
                      ),
                      SizedBox(height: 10.0),
                TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Class*",
                        ),
                      ),
                      SizedBox(height: 10.0),

 Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Performance (grade or points)*",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 10.0),


Row(
  children: [
        Container(
    
      height: 30.0,
    
      padding: EdgeInsets.symmetric(horizontal:10.0),
    
      decoration: BoxDecoration(
    
        border:Border.all(color: Colors.blueGrey[900],)
    
      ),
    
      child: Row(children: [
    
      Text("Grade"),
    
      SizedBox(width: 50.0),
    
      Icon(Icons.arrow_drop_down),
    
    ],),
    
    
    
    
    
    ),
  SizedBox(width: 10.0),
      Container(
    
      height: 30.0,
    
      padding: EdgeInsets.symmetric(horizontal:10.0),
    
      decoration: BoxDecoration(
    
        border:Border.all(color: Colors.blueGrey[900],)
    
      ),
    
      child: Row(children: [
    
      Text("Points"),
    
      SizedBox(width: 50.0),
    
      Icon(Icons.arrow_drop_down),
    
    ],),
    
    
    
    
    
    ),
    
  ],
),
                SizedBox(height: 5.0),
                Text(
                  "\u26A0 Note: A copy of your previous report will be needed.",
                  style: TextStyle(color: Colors.blue[900]),
                ),

SizedBox(height: 15.0),
                Row(
                  children: [
                    Checkbox(value: terms, onChanged: (value){

                      setState(() {
                        terms = !terms;
                      });
                    }),
                    Text(
                      "I accept and agree with terms \nand conditions.",
                      style: TextStyle(color: Colors.red[900]),
                    ),
                  ],
                ),
                                         ],
                  ),
                ),


                Container(
                  width: 100.0,
                                  child: FlatButton.icon(
                    color: Colors.blueGrey[900],
                    onPressed: (){

                  }, icon: Icon(Icons.save,
                  color:Colors.white,), label: Text(
                          "SAVE FORM",
                          style: TextStyle(color: Colors.white),
                        ),),
                ),
Text(
                  "Already created account? Login here",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
SizedBox(height: 30.0)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
