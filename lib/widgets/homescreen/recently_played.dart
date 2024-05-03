import 'package:flutter/material.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 200,
              color: Colors.grey.withOpacity(0.4),
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/neverfold.jpeg",
                    height: 50,
                  ),
                  SizedBox(width: 10),
                  Text("Never Fold"),
                ],
              ),
            ),
            Container(
              width: 200,
              color: Colors.grey.withOpacity(0.4),
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/neverfold.jpeg",
                    height: 50,
                  ),
                  SizedBox(width: 10),
                  Text("Never Fold"),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 200,
              color: Colors.grey.withOpacity(0.4),
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/neverfold.jpeg",
                    height: 50,
                  ),
                  SizedBox(width: 10),
                  Text("Never Fold"),
                ],
              ),
            ),
            Container(
              width: 200,
              color: Colors.grey.withOpacity(0.4),
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/neverfold.jpeg",
                    height: 50,
                  ),
                  SizedBox(width: 10),
                  Text("Never Fold"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
