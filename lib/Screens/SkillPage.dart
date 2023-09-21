import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/Components/Skills.dart';

class SkillPage extends StatefulWidget {
  @override
  State<SkillPage> createState() => _SkillPageState();
}

List<List<String>> Skilldata = [
  ['C Programming', 'C_Logo.png'],
  ['C++ Programming', 'c++.png'],
  ['Python Programming', 'python.png'],
  ['Flutter', 'flutter.png'],
  ['Dart', 'dart.png'],
  ['Kotlin', 'kotlin.png'],
  ['Firebase', 'firebase.png'],
  ['Android', 'android.png'],
  ['MySQL', 'mysql.png'],
  ['Postman', 'postman.png'],
];

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, 'Home');
            },
            icon: Icon(CupertinoIcons.back),
          ),
          title: Text(
            "Skills",
            style: TextStyle(
              fontFamily: "Philosopher",
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: Skilldata.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 elements in each row
          ),
          itemBuilder: (BuildContext context, int index) {
            return Skills(
              Skilldata[index][0],
              Skilldata[index][1],
            );
          },
        ),
      ),
    );
  }
}
