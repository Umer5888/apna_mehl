import 'dart:ui';

import 'package:ecommerce/clients%20screen/subscription_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProgramScreen extends StatefulWidget {
  const ProgramScreen({super.key});

  @override
  State<ProgramScreen> createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {

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
                        Spacer(),
                        Text('Program',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  Text('Choose your program',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          minVerticalPadding: 25,
                          minLeadingWidth: 10,
                          horizontalTitleGap: 30,
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/prog1.png',
                            width: 45, height: 45, color: Colors.black,),
                          title: Text('GYM PROGRAM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                            ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          minVerticalPadding: 25,
                          minLeadingWidth: 10,
                          horizontalTitleGap: 30,
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/prog2.png',
                            width: 45, height: 45, color: Colors.black,),
                          title: Text('HOME WORKOUT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                            ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          minVerticalPadding: 25,
                          minLeadingWidth: 10,
                          horizontalTitleGap: 30,
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/prog3.png',
                            width: 45, height: 45, color: Colors.black,),
                          title: Text('PREGNANCY WORKOUT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                            ),),
                        ),
                      ),
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
                                Get.to(SubscriptionScreen());
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