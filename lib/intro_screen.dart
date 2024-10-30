import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage("assets/images/covid19.png")),
            ),
          ),
        ),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.coronavirus,
                      size: 23,
                      color: Colors.blue.shade800,
                    ),
                    label: Text(
                      "Know about Covid 19",
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.blue.shade800)),
                  ),
                ],
              ),
            ],
          ),
        )



      ],
    ));
  }
}
