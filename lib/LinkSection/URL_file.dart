import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URLButtons extends StatelessWidget {
  final Uri githubUrl;
  final Uri linkedInUrl;
  const URLButtons(
      {super.key, required this.githubUrl, required this.linkedInUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "Home");
          },
          icon: Icon(CupertinoIcons.back),
        ),
        title: const Text(
          "Profiles",
          style: TextStyle(
            fontFamily: "Philosopher",
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Want to check my Github Profile? Press Here",
              style: TextStyle(
                fontFamily: "Philosopher",
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                _launchURL(githubUrl);
              },
              child: const Text("Github"),
            ),
            SizedBox(
              height: 30.0,
            ),
            const Text(
              "Want to check my LinkedIn Profile? Press Here",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Philosopher",
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                _launchURL(linkedInUrl);
              },
              child: const Text(
                "LinkedIn",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Philosopher",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Type> _launchURL(url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch "$url"';
    }
    return Null;
  }
}
