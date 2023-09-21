import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final String image;
  final String name;

  Skills(this.name, this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Get the current screen width and height
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        // Calculate the image height as a percentage of the screen height
        double imageHeight =
            screenHeight * 0.4; // You can adjust this percentage
        double imageWidth = screenWidth * 0.4; // You can adjust this percentage

        // Calculate the font size as a percentage of the screen height
        double fontSize = screenHeight * 0.1; // You can adjust this percentage

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.1), // Light color
                      Colors.black.withOpacity(0.3), // Dark color
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/$image',
                        height: imageHeight,
                        width: imageWidth,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontFamily: "Philosopher",
                        fontSize: fontSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
