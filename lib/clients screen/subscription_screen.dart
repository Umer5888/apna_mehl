import 'package:ecommerce/clients%20screen/gym_program_schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 50,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text('Subscription',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            fontSize: 20,
              fontFamily: 'Poppins'
          ),),
      ),
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Row(
                    children: [
                      Text('Go as a pro member',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF4781B1),
                        fontFamily: 'Poppins'
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text('to get',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF4781B1),
                            fontFamily: 'Poppins'
                        ),)
                    ],
                  ),
                ),
               SizedBox(height: 15),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                 child: Row(
                   children: [
                     Icon(Icons.circle, size: 5),
                     SizedBox(width: 10),
                     Text('Unlimited Workouts',
                     style: TextStyle(
                       fontSize: 12,
                         fontFamily: 'Poppins'
                     ),)
                   ],
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 5),
                      SizedBox(width: 10),
                      Text('Video Guide',
                        style: TextStyle(
                          fontSize: 12,
                            fontFamily: 'Poppins'
                        ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(Icons.circle, size: 5),
                      SizedBox(width: 10),
                      Text('Personal Nutrition plan',
                        style: TextStyle(
                          fontSize: 12,
                            fontFamily: 'Poppins'
                        ),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Color(0XFFAAAAAA)),
                    ),
                    child: ListTile(
                      minVerticalPadding: 25,
                      title: Text('Monthly without nutrition',
                      style: TextStyle(
                        fontSize: 12,
                          fontFamily: 'Poppins'
                      ),),
                      subtitle: Text('200 KWD/month',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0XFFAAAAAA),
                          fontFamily: 'Poppins'
                      ),),
                      trailing: Icon(Icons.circle_outlined, color: Color(0XFFAAAAAA), size: 30,),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Color(0XFFAAAAAA)),
                    ),
                    child: ListTile(
                      minVerticalPadding: 25,
                      title: Text('Monthly with nutrition',
                        style: TextStyle(
                          fontSize: 12,
                            fontFamily: 'Poppins'
                        ),),
                      subtitle: Text('300 KWD/month',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0XFFAAAAAA),
                            fontFamily: 'Poppins'
                        ),),
                      trailing: Icon(Icons.circle_outlined, color: Color(0XFFAAAAAA), size: 30,),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(GymProgramScheduleScreen());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFF4781B1),
                                minimumSize: Size(0, 50),
                            ),
                            child: Text('Confirm',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                  fontFamily: 'Poppins'
                              ),)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}