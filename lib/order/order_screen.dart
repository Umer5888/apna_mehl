import 'package:ecommerce/order/track_order_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../helper/config.dart';
import '../helper/configure.dart';
import '../user profile/notifictions_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0XFFC8C8C8).withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Primarycolor,
        titleSpacing: 80,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white)),
        title: Row(
          children: [
            SizedBox(width: 20),
            Text('My Order',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: MyTabs()
    );
  }
}

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight - 45,
        bottom: TabBar(
        isScrollable: true,
          labelPadding: EdgeInsets.symmetric(horizontal: 25),
          controller: _tabController,
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'To Pay'),
            Tab(text: 'To Ship'),
            Tab(text: 'To Deliver'),
            Tab(text: 'To Review'),
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0XFFC8C8C8).withOpacity(0.03),
        ),
        child: TabBarView(
             controller: _tabController,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text('ORDER CANCELLED',
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(CupertinoIcons.multiply,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(CupertinoIcons.cube_box,
                                        color: nonColor, size: 17,),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Primarycolor.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text('ORDER PLACED',
                                            style: TextStyle(
                                              color: Primarycolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.blueAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('DELIVERED',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.redAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('CANCELLED',
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                    ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('ON PROCESS',
                                        style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: textColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, bottom: 8, top: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNotColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('SHIPPED',
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16, left: 16, bottom: 8,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNewColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('DELIVERED',
                                        style: TextStyle(
                                          color: newColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNewColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: newColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text('ORDER CANCELLED',
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(CupertinoIcons.multiply,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(CupertinoIcons.cube_box,
                                        color: nonColor, size: 17,),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Primarycolor.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text('ORDER PLACED',
                                            style: TextStyle(
                                              color: Primarycolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.blueAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('DELIVERED',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.redAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('CANCELLED',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('ON PROCESS',
                                        style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: textColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, bottom: 8, top: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNotColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('SHIPPED',
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16, left: 16, bottom: 8,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNewColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('DELIVERED',
                                        style: TextStyle(
                                          color: newColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNewColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: newColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text('ORDER CANCELLED',
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(CupertinoIcons.multiply,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(CupertinoIcons.cube_box,
                                        color: nonColor, size: 17,),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Primarycolor.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text('ORDER PLACED',
                                            style: TextStyle(
                                              color: Primarycolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.blueAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('DELIVERED',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.redAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('CANCELLED',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('ON PROCESS',
                                        style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: textColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, bottom: 8, top: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNotColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('SHIPPED',
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16, left: 16, bottom: 8,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNewColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('DELIVERED',
                                        style: TextStyle(
                                          color: newColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNewColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: newColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text('ORDER CANCELLED',
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(CupertinoIcons.multiply,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(CupertinoIcons.cube_box,
                                        color: nonColor, size: 17,),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Primarycolor.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text('ORDER PLACED',
                                            style: TextStyle(
                                              color: Primarycolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.blueAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('DELIVERED',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.redAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('CANCELLED',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('ON PROCESS',
                                        style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: textColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, bottom: 8, top: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNotColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('SHIPPED',
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16, left: 16, bottom: 8,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNewColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('DELIVERED',
                                        style: TextStyle(
                                          color: newColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNewColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: newColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text('ORDER CANCELLED',
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(CupertinoIcons.multiply,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(CupertinoIcons.cube_box,
                                        color: nonColor, size: 17,),
                                    ),
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, top: 8, bottom: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Primarycolor.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text('ORDER PLACED',
                                            style: TextStyle(
                                              color: Primarycolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.blueAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('DELIVERED',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                          SizedBox(width: 10),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Colors.redAccent.withOpacity(0.3),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5, right: 5),
                                                child: Text('CANCELLED',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                  ),),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('ON PROCESS',
                                        style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                          color: Colors.redAccent, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          CupertinoIcons.cube_box_fill,
                                          color: textColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16, left: 16, bottom: 8, top: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNotColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('SHIPPED',
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                          color: nonColor, size: 17,)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.emoji_emotions,
                                            color: nonColor, size: 17)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16, left: 16, bottom: 8,),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Get.to(TrackOrderScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: myNewColor,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('DELIVERED',
                                        style: TextStyle(
                                          color: newColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent.withOpacity(
                                            0.2),
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.check_outlined,
                                            color: Colors.redAccent, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                            CupertinoIcons.cube_box_fill,
                                            color: textColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNotColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.fire_truck_sharp,
                                            color: primaryColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: myNewColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons.cube_box,
                                            color: newColor, size: 17)
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: suitColor,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.emoji_emotions, color: nonColor,
                                          size: 17,)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.2,
                                        child: Icon(Icons.circle,
                                          color: Color(0xFFfde8d7),
                                          size: 60,
                                        ),
                                      ),
                                      Container(
                                        child: Transform.rotate(
                                          angle: 19,
                                          child: Image.asset('assets/bata.png', width: 70, height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Air Max 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text('Brand: Nike, Size: 42, Color: LightBrown',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 1, color: Primarycolor)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Text('Noman & Sons LTD >',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Primarycolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('\$240',
                                        style: TextStyle(
                                          color: Color(0XFFFA5507),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$300',
                                            style: TextStyle(
                                              fontSize: 12,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text('x 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Order ID',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('hdu23839',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Deliver to',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Home',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      Text('Total Payment',
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Rs.23.98',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}