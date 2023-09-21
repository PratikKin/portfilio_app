import 'package:flutter/material.dart';
import 'package:pushable_button/pushable_button.dart';

import '../LinkSection/URL_file.dart';
import 'SkillPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: 160.0,
              child: PushableButton(
                height: 60,
                elevation: 8,
                hslColor: const HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
                shadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
                onPressed: () {
                  Navigator.push(context, _createRoute(SkillPage()));
                },
                child: const Text(
                  'My Skills',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Philosopher"),
                ),
              ),
            ),
            SizedBox(
              width: 160.0,
              child: PushableButton(
                height: 60,
                elevation: 8,
                hslColor: const HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
                shadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    _createRoute(
                      URLButtons(
                        githubUrl: Uri.parse("https://github.com/PratikKin"),
                        linkedInUrl: Uri.parse(
                            "https://www.linkedin.com/in/pratik-kunghadkar-b0253b210"),
                      ),
                    ),
                  );
                },
                child: const Text(
                  'My Profiles',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Philosopher"),
                ),
              ),
            ),
            SizedBox(
              width: 160.0,
              child: PushableButton(
                height: 60,
                elevation: 8,
                hslColor: const HSLColor.fromAHSL(1.0, 120, 1.0, 0.37),
                shadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    'Education',
                  );
                },
                child: const Text(
                  'Education',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Philosopher"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PageRouteBuilder _createRoute(page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from the right
        const end = Offset.zero; // End at the center
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
