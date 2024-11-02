import 'package:covid_19_app/constant.dart';
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
      body: Column(
        children: [
          Column(
            children: [
              Image.asset("assets/images/about.png"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Symptoms",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                SizedBox(height: 18,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 20,
                              color: kActiveShadowColor,
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/headache.png", height: 85,),
                          Text("Headache", style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 20,
                              color: kActiveShadowColor,
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/cough.png", height: 85,),
                          Text("Cough", style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 20,
                              color: kActiveShadowColor,
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/fever.png", height: 85,),
                          Text("Fever", style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                Row(
                  children: [
                    Text("Prevention", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ],
                ),

                SizedBox(height: 15),

                Column(
                  children: [
                    Column(
                      children: [
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
                            image: DecorationImage(image: AssetImage("assets/images/wear_mask.png"),alignment: Alignment.bottomLeft),
                          ),
                        ),

                      ],
                    )
                  ],
                )


              ],
            ),
          )
        ],
      ),
    );
  }
}