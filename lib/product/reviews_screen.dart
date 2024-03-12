import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/config.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        centerTitle: true,
        leadingWidth: 50,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
        title: Text('Ratings & Reviews',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('3.7',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                          ),),
                        Row(
                          children: [
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_half_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text('58 ratings',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                        ),)
                        // Container(
                        //   decoration: BoxDecoration(
                        //     color: Color(0XFFFACA51),
                        //     borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(2), bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(left: 5, right: 5),
                        //     child: Text('Good',
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //       ),),
                        //   ),
                        // ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            SizedBox(width: 5),
                            Stack(
                              children: [
                                Container(
                                  width: 70,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black12,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 5),
                            Text('34',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            SizedBox(width: 5),
                            Stack(
                              children: [
                                Container(
                                  width: 50,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black12,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 5),
                            Text('15',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            SizedBox(width: 5),
                            Stack(
                              children: [
                                Container(
                                  width: 30,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black12,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 5),
                            Text('10',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            SizedBox(width: 5),
                            Stack(
                              children: [
                                Container(
                                  width: 30,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black12,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 5),
                            Text('10',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                            SizedBox(width: 5),
                            Stack(
                              children: [
                                Container(
                                  width: 0,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black12,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 5),
                            Text('0',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5, right: 25),
                              child: Row(
                                children: [
                                  Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 15,),
                                  Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 15,),
                                  Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 15,),
                                  Icon(Icons.star_half_rounded, color: Color(0XFFFACA51), size: 15,),
                                  Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 15,),
                                  SizedBox(width: 5),
                                  Text('arsalan',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black.withOpacity(0.3),
                                    ),),
                                  Spacer(),
                                  Text('1 week ago',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black.withOpacity(0.3),
                                    ),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Wrap(
                                children: [
                                  Text('These shoes are recommended by me, quality is outclass'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Row(
                                children: [
                                  Image.network('https://sg-test-11.slatic.net/other/roc/d8621982b5e329a3c27152d7bdb13610.jpg', width: 80, height: 100,),
                                  Image.network('https://sg-test-11.slatic.net/other/roc/f1a1c5f429f98a0cdbd2a7cd235e9e2e.jpg', width: 80, height: 100,),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      }
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}