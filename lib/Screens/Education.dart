import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/HoverCard.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "Home");
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: const Text(
          "Education",
          style: TextStyle(
            fontFamily: "Philosopher",
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HoverCard(
                degree: "B.tech",
                completionYear: "2025",
                institute: "IIIT Dharwad",
                percentage: "7.64 (CPI)",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HoverCard(
                degree: "Higher Secondary(XII)",
                completionYear: "2021",
                institute: "J.E.S. College Jalna",
                percentage: "98%",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: HoverCard(
                degree: "Secondary (X)",
                completionYear: "2019",
                institute: "S.B. High School, Jalna",
                percentage: "92%",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
