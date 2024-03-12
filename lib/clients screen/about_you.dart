import 'dart:ui';

import 'package:ecommerce/clients%20screen/goal_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutYouScreen extends StatefulWidget {
  const AboutYouScreen({super.key});

  @override
  State<AboutYouScreen> createState() => _AboutYouScreenState();
}

class _AboutYouScreenState extends State<AboutYouScreen> {
  late DateTime _selectedDate;
  final TextEditingController _textEditingController = TextEditingController();
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
                      Text('About You',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Poppins'
                      ),),
                      Text('Tell us about yourself so we can',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Poppins'
                      ),),
                      Text('personalize your program.',
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
                          width: MediaQuery.of(context).size.width*0.5 -20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 0, color: Color(0XFFECECEC))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25,),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0XFFECECEC),
                                    maxRadius: 17,
                                    child: Image.asset('assets/images/Vectico1.png',
                                      width: 15, height: 15, color: Colors.black,)),
                                SizedBox(height: 5),
                                Text('Male',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Poppins'
                                ),),
                                Text('You are planning to use',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white.withOpacity(0.8),
                                  fontFamily: 'Poppins',
                                ),),
                                Text('our platform as a male?',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white.withOpacity(0.8),
                                    fontFamily: 'Poppins',
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5 -20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 0, color: Color(0XFFECECEC))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Color(0XFFECECEC),
                                    maxRadius: 17,
                                    child: Image.asset('assets/images/Vectico.png',
                                      width: 15, height: 15, color: Colors.black,)),
                                SizedBox(height: 5),
                                Text('Female',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Poppins'
                                  ),),
                                Text('You are planning to use',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white.withOpacity(0.8),
                                    fontFamily: 'Poppins',
                                  ),),
                                Text('our platform as a female?',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white.withOpacity(0.8),
                                    fontFamily: 'Poppins',
                                  ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        enabled: true,
                        isDense: true,
                        filled: true,
                        fillColor: Colors.white,
                        // prefix: Image.asset('assets/images/Calendar.png',fit: BoxFit.fitWidth, height: 10, width: 10,),
                        hintText: 'Date of Birth',
                        hintStyle: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                        contentPadding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                enabled: true,
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                // prefix: Image.asset('assets/images/Calendar.png',fit: BoxFit.fitWidth, height: 10, width: 10,),
                                hintText: 'Your Weight',
                                hintStyle: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0XFFDBF0F3),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('KG',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                enabled: true,
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                // prefix: Image.asset('assets/images/Calendar.png',fit: BoxFit.fitWidth, height: 10, width: 10,),
                                hintText: 'Your Height',
                                hintStyle: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0XFFDBF0F3),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('CM',
                              style: TextStyle(
                                  fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 15),
                  //   child: GestureDetector(
                  //     onTap: () => _selectDate(),
                  //     child: AbsorbPointer(
                  //       child: TextField(
                  //         controller: _textEditingController,
                  //         decoration: InputDecoration(
                  //             enabled: true,
                  //             isDense: true,
                  //             filled: true,
                  //             fillColor: Colors.white,
                  //             prefixIcon: Image.asset('assets/images/Calendar.png', width: 5, height: 5,),
                  //             hintText: 'Date of Birth',
                  //             hintStyle: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                  //             contentPadding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                  //             enabledBorder: OutlineInputBorder(
                  //                 borderRadius: BorderRadius.circular(15)
                  //             ),
                  //             focusedBorder: OutlineInputBorder(
                  //                 borderRadius: BorderRadius.circular(15)
                  //             )
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(GoalScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFDBF0F3),
                                minimumSize: Size(0, 50)
                              ),
                              child: Text('Next >',
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
  // _selectDate() async {
  //   DateTime? pickedDate = await showModalBottomSheet<DateTime>(
  //     context: context,
  //     builder: (context) {
  //       DateTime? tempPickedDate;
  //       return Container(
  //         height: 250,
  //         child: Column(
  //           children: <Widget>[
  //             Container(
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: <Widget>[
  //                   CupertinoButton(
  //                     child: Text('Cancel'),
  //                     onPressed: () {
  //                       Navigator.of(context).pop();
  //                     },
  //                   ),
  //                   CupertinoButton(
  //                     child: Text('Done'),
  //                     onPressed: () {
  //                         Navigator.of(context).pop(tempPickedDate);
  //                     },
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Divider(
  //               height: 0,
  //               thickness: 1,
  //             ),
  //             Expanded(
  //               child: Container(
  //                 child: CupertinoDatePicker(
  //                   mode: CupertinoDatePickerMode.date,
  //                   onDateTimeChanged: (DateTime dateTime) {
  //                     tempPickedDate = dateTime;
  //                   },
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  //
  //   if (pickedDate != null && pickedDate != _selectedDate) {
  //     setState(() {
  //       _selectedDate = pickedDate;
  //       _textEditingController.text = pickedDate.toString();
  //     });
  //   }
  // }
}