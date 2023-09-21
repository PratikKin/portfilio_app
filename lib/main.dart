import 'package:flutter/material.dart';
import 'package:portfolio_app/LinkSection/URL_file.dart';

import 'Screens/Education.dart';
import 'Screens/HomePage.dart';
import 'Screens/SkillPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.black26,
        ),
      ),
      initialRoute: 'Home',
      routes: {
        'Home': (context) => const HomePage(),
        'Skills': (context) => SkillPage(),
        'URL': (context) => URLButtons(
              githubUrl: Uri.parse("https://github.com/PratikKin"),
              linkedInUrl: Uri.parse(
                  "https://www.linkedin.com/in/pratik-kunghadkar-b0253b210"),
            ),
        'Education': (context) => const Education(),
      },
    );
  }
}
