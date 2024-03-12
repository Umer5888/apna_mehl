import 'package:ecommerce/order/track_order_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helper/configure.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({super.key});

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Spacer(),
                  Image.asset('assets/thankyou.gif'),
                  Spacer(),
                  Text("Thank You",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Thank you for choosing stoVoo today we sure do hope you request our service.cheers",
                      style: TextStyle(
                        color: nonColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),

                  InkWell(
                    borderRadius: BorderRadius.circular(35),
                    onTap: (){
                      Get.to(TrackOrderScreen());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: primaryColor
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child:
                            Text("Track order",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                                fontSize: 20,
                              )
                            )
                          )
                        ]
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 30,
            child: ElevatedButton(
              onPressed: () {Get.back();},
              style: ElevatedButton.styleFrom(
                elevation: 1,
                shape: CircleBorder(), // Set the shape to CircleBorder
                minimumSize: Size(56, 56), // Set the minimumSize to increase the size
              ),
              child: Icon(Icons.arrow_back_outlined),
            ),
          )
        ],
      )
    );
  }
}