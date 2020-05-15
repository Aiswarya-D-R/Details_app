import 'package:flutter/material.dart';
import 'package:listapp/views/navigationpg.dart';

class Logpg extends StatelessWidget {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/backgrnd.jpg"),
        fit: BoxFit.fill,
      )),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "LOGIN PAGE",
                  style: TextStyle(fontSize: 45.0, color: Colors.white),
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                      hintText: "Enter username",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: passcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    var name = namecontroller.text;
                    var pass = passcontroller.text;
                    if (name == "admin" && pass == "12345") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Navgbar()));
                    }
                    print("AAAA");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 50.0,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 25.0, color: Colors.black),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
