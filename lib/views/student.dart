import 'package:flutter/material.dart';

class Stud extends StatefulWidget {
  @override
  _StudState createState() => _StudState();
}

class _StudState extends State<Stud> {
  var names = [];
  var roll = [];
  var admn = [];
  TextEditingController namescontroller = TextEditingController();
  TextEditingController rollcontroller = TextEditingController();
  TextEditingController admncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 60.0,
            ),
            Text(
              "Student Details",
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: namescontroller,
              decoration: InputDecoration(
                  hintText: "Enter name",
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: rollcontroller,
              decoration: InputDecoration(
                  hintText: "Enter roll number",
                  labelText: "Roll no",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: admncontroller,
              decoration: InputDecoration(
                hintText: "Enter adminssion number",
                labelText: "Admin no",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  var getName = namescontroller.text;
                  var getRoll = rollcontroller.text;
                  var getAdmn = admncontroller.text;
                  namescontroller.clear();
                  rollcontroller.clear();
                  admncontroller.clear();
                  names.add(getName);
                  roll.add(getRoll);
                  admn.add(getAdmn);
                });
              },
              child: Text(
                "ADD",
                style: TextStyle(fontSize: 25.0,color: Colors.white),
              ),
              color: Colors.indigo,
            ),
            SizedBox(height: 10.0),
            SingleChildScrollView(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length == null ? 0 : names.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.indigoAccent,
                          size: 35.0,
                        ),
                        title: Text(
                          "Name: " + names[index],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text("Roll no: " +
                            roll[index] +
                            "\nAdmn no: " +
                            admn[index]),
                        trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              names.removeAt(index);
                              roll.removeAt(index);
                              admn.removeAt(index);
                            });
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.indigoAccent,
                            size: 35.0,
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),

    );
  }
}
