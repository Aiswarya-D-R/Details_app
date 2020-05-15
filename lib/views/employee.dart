import 'package:flutter/material.dart';

class Emply extends StatefulWidget {
  @override
  _EmplyState createState() => _EmplyState();
}

class _EmplyState extends State<Emply> {
  var name = [];
  var empid = [];
  TextEditingController namecontrol = TextEditingController();
  TextEditingController idcontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60.0),
            Center(
              child: Text(
                "EMPLOYEE DETAILS",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              controller: namecontrol,
              decoration: InputDecoration(
                  hintText: "Enter employee name",
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: idcontrol,
              decoration: InputDecoration(
                  hintText: "Enter employee id",
                  labelText: "Employee ID",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  var getName = namecontrol.text;
                  var getId = idcontrol.text;
                  namecontrol.clear();
                  idcontrol.clear();
                  name.add(getName);
                  empid.add(getId);
                });
              },
              child: Text(
                "ADD",
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              color: Colors.purple,
            ),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              child: ListView.builder(
                  itemCount: name.length == null ? 0 : name.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.purple,
                          size: 45.0,
                        ),
                        title: Text(
                          "Name: " + name[index],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(
                          "ID: " + empid[index],
                        ),
                        trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                name.removeAt(index);
                                empid.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              size: 35.0,
                              color: Colors.purple,
                            )),
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
