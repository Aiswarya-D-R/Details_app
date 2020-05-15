import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listapp/views/loginpg.dart';


void main() {
  runApp(Strpg());
}

class Strpg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Logpg(),
      ),
    );
  }
}
