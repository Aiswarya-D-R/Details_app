import 'package:flutter/material.dart';
import 'package:listapp/views/book.dart';
import 'package:listapp/views/employee.dart';
import 'package:listapp/views/product.dart';
import 'package:listapp/views/student.dart';

class Navgbar extends StatefulWidget {
  @override
  _NavgbarState createState() => _NavgbarState();
}

class _NavgbarState extends State<Navgbar> {
  int _currindex = 0;
  var pages=[Emply(),Book(),Prod(),Stud()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[_currindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _currindex,
          onTap: (index) {
            setState(() {
              _currindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Employee"),
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text("BOOK"),
              backgroundColor: Colors.deepPurple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text("PRODUCT"),
              backgroundColor: Colors.indigo,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text("STUDENT"),
              backgroundColor: Colors.indigoAccent,
            ),
          ],
        ),
      ),
    );
  }
}
