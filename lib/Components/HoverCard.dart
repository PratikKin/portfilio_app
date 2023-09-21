import 'package:flutter/material.dart';

class HoverCard extends StatefulWidget {
  final String degree;
  final String institute;
  final String percentage;
  final String completionYear;

  const HoverCard({
    Key? key,
    required this.degree,
    required this.institute,
    required this.percentage,
    required this.completionYear,
  }) : super(key: key);

  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: isExpanded
              ? MediaQuery.of(context).size.width * 0.8
              : MediaQuery.of(context).size.width * 0.25,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue.shade600,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  widget.degree,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
              if (isExpanded)
                Positioned(
                  top: 60,
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 20,
                          offset: Offset(0, 3),
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          spreadRadius: -2,
                          blurRadius: 10,
                          offset: Offset(0, -2),
                        ),
                      ],
                      // Remove the border
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.institute,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.completionYear,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              widget.percentage,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        // Add more additional data as needed
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
