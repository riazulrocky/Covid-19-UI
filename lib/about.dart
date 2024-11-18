import 'package:covid_19_app/constant.dart';
import 'package:covid_19_app/intro_screen.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top image
            Image.asset(
              "assets/images/about.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Symptoms",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildSymptomCard(
                        imagePath: "assets/images/headache.png",
                        label: "Headache",
                      ),
                      buildSymptomCard(
                        imagePath: "assets/images/cough.png",
                        label: "Cough",
                      ),
                      buildSymptomCard(
                        imagePath: "assets/images/fever.png",
                        label: "Fever",
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  // Prevention section
                  const Text(
                    "Prevention",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 136,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 24,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/wear_mask.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Wear face mask",
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  "Wear a mask properly in crowded areas and replace it regularly to reduce virus spread.", style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),

                  const SizedBox(height: 15),

                  Container(
                    height: 136,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 24,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/wash_hands.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Wash your hands",
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  "Regularly wash your hands with soap and water to help prevent the spread of germs and viruses.", style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),

                SizedBox(height: 20,),

                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => IntroScreen(),));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_back, color: Colors.white),  // Back icon inside the button
                              SizedBox(width: 8),  // Adds some spacing between the icon and the text
                              Text(
                                "Back to home page",
                                style: TextStyle(color: Colors.white),  // Text style
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSymptomCard({required String imagePath, required String label}) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: kActiveShadowColor,
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(imagePath, height: 85),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
