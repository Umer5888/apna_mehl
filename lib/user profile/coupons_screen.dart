import 'package:ecommerce/helper/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {

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
        title: Text('My Coupons',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
      ),
      body: SafeArea(
          child: Container(
            color: Color(0XFFC8C8C8).withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Our Coupons',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  Text('Our official',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 15,
                    ),),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Primarycolor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('35% off',
                              style: TextStyle(
                                fontSize: 20,
                                color: Primarycolor,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 5),
                              Text('(max USD 15)',
                                style: TextStyle(
                                    fontSize: 15,
                                  color: Primarycolor,
                                ),),
                              Spacer(),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text('PKX2S6KLIX98',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  child: Text('orders over USD 236 (Single-use only | App only)'))
                            ],
                          ),
                          Row(
                            children: [
                              Text('Valid until Feb 2, 06:39 AM PT',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),),
                              Spacer(),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Use now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),),
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(left: 25, right: 25),
                                  minimumSize: Size(0, 30),
                                  backgroundColor: Primarycolor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Primarycolor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('60% off',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Primarycolor,
                                  fontWeight: FontWeight.bold,
                                ),),
                              SizedBox(width: 5),
                              Text('(max USD 15)',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Primarycolor,
                                ),),
                              Spacer(),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text('PKX2S6KLIX98',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  child: Text('orders over USD 236 (Single-use only | App only)'))
                            ],
                          ),
                          Row(
                            children: [
                              Text('Valid until Feb 2, 06:39 AM PT',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),),
                              Spacer(),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Use now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),),
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(left: 25, right: 25),
                                  minimumSize: Size(0, 30),
                                  backgroundColor: Primarycolor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Primarycolor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('80% off',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Primarycolor,
                                  fontWeight: FontWeight.bold,
                                ),),
                              SizedBox(width: 5),
                              Text('(max USD 15)',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Primarycolor,
                                ),),
                              Spacer(),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text('PKX2S6KLIX98',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  child: Text('orders over USD 236 (Single-use only | App only)'))
                            ],
                          ),
                          Row(
                            children: [
                              Text('Valid until Feb 2, 06:39 AM PT',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),),
                              Spacer(),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Use now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),),
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(left: 25, right: 25),
                                  minimumSize: Size(0, 30),
                                  backgroundColor: Primarycolor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}