import 'package:card_swiper/card_swiper.dart';
import 'package:ecommerce/clients%20screen/about_you.dart';
import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/product/all_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List images = [
    'assets/banner.jpg','assets/banner1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        automaticallyImplyLeading: false,
        title: Text('Notifications',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(CupertinoIcons.bin_xmark_fill, color: Colors.black, size: 15),
              ),
            ),
          ),
        ],
      ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Color(0XFFC8C8C8).withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Column(
                  children: [
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                            ),
                        ),
                        title: Text('Your Quote #3685 has been approved'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.green,),
                          ),
                        ),
                        title: Text('Your Service #4862 has been completed'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.ticket_fill, color: Colors.orange,),
                          ),
                        ),
                        title: Text('Invite friends - Get 3 coupons each!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.multiply_circle_fill, color: Colors.red,),
                          ),
                        ),
                        title: Text('Your booking #3986 has been cancelled'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2),
                    Card(
                      elevation: 0,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.check_mark_circled_solid, color: Colors.blue,),
                          ),
                        ),
                        title: Text('You have a new request from Ahmed!'),
                      ),
                    ),
                    SizedBox(height: 2)
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}