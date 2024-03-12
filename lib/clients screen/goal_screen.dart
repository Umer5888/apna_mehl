import 'dart:ui';

import 'package:ecommerce/clients%20screen/program_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgimg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              color: Colors.black.withOpacity(0.2),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 40),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {Get.back();},
                            child: Icon(Icons.arrow_back, color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('assets/logonam.png', width: 60, height: 60,),
                  ),
                  SizedBox(height: 25),
                  Column(
                    children: [
                      Text('What is your goal?',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'
                        ),),
                      Text('It will help us to choose a best program',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                            fontFamily: 'Poppins'
                        ),),
                      Text('for you',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                            fontFamily: 'Poppins'
                        ),),
                    ],
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5 -25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFFECECEC),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Container(
                              width: 50,
                              child: Text('Improve shape',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF4781B1)
                              ),),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5 -25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFFECECEC),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text('Lose Fat',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF4781B1)
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5 -25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFFECECEC),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Container(
                              width: 50,
                              child: Text('Lean & Tone',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF4781B1)
                                ),),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5 -25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFFECECEC),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text('Injury Rehab',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF4781B1)
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5 -25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFFECECEC),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Container(
                              width: 50,
                              child: Text('Stamina',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF4781B1)
                                ),),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5 -25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFFECECEC),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text('Yoga',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF4781B1),
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(ProgramScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFDBF0F3),
                                minimumSize: Size(0, 50)
                              ),
                              child: Text('Confirm',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF4781B1),
                                  fontFamily: 'Poppins'
                                ),)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}