import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/order/track_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../navigation_bar.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({super.key});

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {Get.back();},
                          child: Icon(Icons.arrow_back,size: 25,)),
                    ],
                  ),
                ),
                Spacer(),
                Center(
                    child: Icon(Icons.check_circle, color: Colors.green, size: 100,)),
                SizedBox(height: 50),
                Text('Order Placed Successfully!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                SizedBox(height: 10),
                Text('Thank You!',
                style: TextStyle(
                  fontSize: 20,
                ),),
                SizedBox(height: 10),
                Text('Your order is on the way!',
                  style: TextStyle(
                    fontSize: 15,
                  ),),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(TrackOrderScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(color: Primarycolor)
                              ),
                              minimumSize: Size(170, 50)
                            ),
                            child: Text('TRACK ORDER',
                              style: TextStyle(
                                color: Primarycolor,
                              ),)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(BottomNavBar());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Primarycolor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                 minimumSize: Size(100, 50)
                            ),
                            child: Text('CONTINUE SHOPPING',
                              style: TextStyle(
                                color: Colors.white,
                              ),)),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          )
      ),
    );
  }
}