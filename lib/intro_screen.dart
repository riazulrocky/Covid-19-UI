import 'package:covid_19_app/constant.dart';
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
          Column(
            children: [
              Image.asset("assets/images/covid19.png"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.coronavirus, color: Colors.blue.shade900),
                      Text(
                        "Learn about COVID-19 and stay safe!",
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 20, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Case Update", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Newest update 28 March, 2019"),
                    Text("See details", style: TextStyle(color: Colors.blue.shade900),),
                  ],
                ),
              ],
            ),
          ),

          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 30,
                      color: kShadowColor,
                    ),
                  ],
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kInfectedColor.withOpacity(0.26),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: kInfectedColor,
                                      width: 2,
                                    )
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text("1046", style: TextStyle(fontSize: 40, color: kInfectedColor)),
                            Text("Infected", style: kSubTextStyle,),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kDeathColor.withOpacity(0.26),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: kDeathColor,
                                      width: 2,
                                    )
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text("87", style: TextStyle(fontSize: 40, color: kDeathColor)),
                            Text("Deaths", style: kSubTextStyle,),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kRecovercolor.withOpacity(0.26),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: kRecovercolor,
                                      width: 2,
                                    )
                                ),
                              ),
                            ),

                            SizedBox(height: 10),

                            Text("1046", style: TextStyle(fontSize: 40, color: kRecovercolor)),
                            Text("Infected", style: kSubTextStyle,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Spread of Virus", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    Text("See details", style: TextStyle(color: Colors.blue.shade900),),
                  ],
                )
              ],
            ),
          ),

          Column(
            children: [
              Image.asset("assets/images/map.png"),
            ],
          )

        ],
      ),
    );
  }
}