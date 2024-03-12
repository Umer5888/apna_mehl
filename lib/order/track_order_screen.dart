import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/product/all_products.dart';
// import 'package:ecommerce/helper/notify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../helper/configure.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Primarycolor,
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: 25,),
                      Text("Track order",
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 45,
                child: InkWell(
                  onTap: () {Get.back();},
                    child: Icon(Icons.arrow_back_ios, color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: 40),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Order Number:",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  "28937",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.star_border,size: 25),
                                SizedBox(width: 17,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Container(
                              // height: 60,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width - 24,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child:
                                        Image.asset("assets/profile.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text("Support Person",
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(appName,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text("205 Deliveries",
                                            style: TextStyle(
                                              color: nonColor,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: Primarycolor.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.phone,
                                            color: Primarycolor,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              // height: 60,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width - 24,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child:
                                        Image.asset("assets/profile.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text("Delivery Person",
                                        style: TextStyle(
                                          color: nonColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text("Noman",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text("205 Deliveries",
                                            style: TextStyle(
                                              color: nonColor,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: Primarycolor.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.phone,
                                            color: Primarycolor,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Tracking history",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10,),
                            Stack(
                              children: [
                                new Padding(
                                  padding: const EdgeInsets.only(left: 40.0,),
                                  child: Expanded(
                                    child: new Container(
                                        width: double.infinity,
                                        color: whiteColor,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Text("Item Processing",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              "Your item request has been accepted and the vender is processing you order.",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 13,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text("Item Processing",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              "Your item request has been accepted and the vender is processing you order.",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 13,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text("Item Processing",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              "Your item request has been accepted and the vender is processing you order.",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 13,
                                              ),
                                            ),
                                            SizedBox(height: 13,),
                                            Text("Item Processing",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              "Your item request has been accepted and the vender is processing you order.",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                  ),
                                ),
                                new Positioned(
                                  top: 0.0,
                                  bottom: 0.0,
                                  left: 20.0,
                                  child: new Container(
                                    height: double.infinity,
                                    width: 2.0,
                                    color: Primarycolor,
                                  ),
                                ),
                                Positioned(
                                  left: 8.0,
                                  child: Container(
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.checkmark_shield,
                                      color:Primarycolor,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 80,
                                  left: 8.0,
                                  child: Container(
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.checkmark_shield,
                                      color: Primarycolor,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 160,
                                  left: 8.0,
                                  child: Container(
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.checkmark_shield,
                                      color: Primarycolor,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 235,
                                  left: 8.0,
                                  child: Container(
                                    padding: EdgeInsets.all(1.0),
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.checkmark_shield,
                                      color: Primarycolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: Primarycolor,
                              spreadRadius: 0.5,
                              blurRadius: 20,
                              offset: Offset(2, 10),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child:
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    "Order Detail",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              15),
                                        ),
                                        child: Image.network(
                                            "https://heelsshoes.pk/cdn/shop/products/DSC_5643.jpg?v=1679401425&width=600"),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Text(
                                            "Shoe Polisher",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "2.49 x 2",
                                            style: TextStyle(
                                              color: nonColor,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            "USD.5.98",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Get.to(AllProducts());
                                            },
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor: Primarycolor,
                                              minimumSize: Size(0, 30),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            child: Text(
                                              "Order Again",
                                              style: TextStyle(
                                                color: whiteColor,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              15),
                                        ),
                                        child: Image.network(
                                            "https://heelsshoes.pk/cdn/shop/products/DSC_5643.jpg?v=1679401425&width=600"),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Text(
                                            "Shoe Polisher",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "2.49 x 2",
                                            style: TextStyle(
                                              color: nonColor,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            "USD.5.98",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Get.to(AllProducts());
                                            },
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor: Primarycolor,
                                              minimumSize: Size(0, 30),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            child: Text(
                                              "Order Again",
                                              style: TextStyle(
                                                color: whiteColor,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              15),
                                        ),
                                        child: Image.network(
                                            "https://heelsshoes.pk/cdn/shop/products/DSC_5643.jpg?v=1679401425&width=600"),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Text(
                                            "Shoe Polisher",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "2.49 x 2",
                                            style: TextStyle(
                                              color: nonColor,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            "USD.5.98",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Get.to(AllProducts());
                                            },
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor: Primarycolor,
                                              minimumSize: Size(0, 30),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            child: Text(
                                              "Order Again",
                                              style: TextStyle(
                                                color: whiteColor,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text(
                                    "Sub total amount",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "USD 25.48",
                                    style: TextStyle(
                                      color: nonColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text(
                                    "Discount",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "USD 25.48",
                                    style: TextStyle(
                                      color: nonColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text(
                                    "Total amount",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "USD 25.48",
                                    style: TextStyle(
                                      color: nonColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              MyWidget(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Get.bottomSheet(
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 15,),
                  Text(
                    "Rate us!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "How much do you like this app",
                    style: TextStyle(
                      color: nonColor,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      SizedBox(width: 55,),
                      Icon(Icons.star_border,size: 40,),
                      SizedBox(width: 20,),
                      Icon(Icons.star_border,size: 40,),
                      SizedBox(width: 20,),
                      Icon(Icons.star_border,size: 40,),
                      SizedBox(width: 20,),
                      Icon(Icons.star_border,size: 40,),
                      SizedBox(width: 20,),
                      Icon(Icons.star_border,size: 40,),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      maxLines: 4,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: newColor),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: nonColor),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Description",
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Primarycolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(390, 40),
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 17,
                      ),
                    ),

                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Primarycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          minimumSize: Size(400, 40),
        ),
        child: Text(
          "Write Feedback",
          style: TextStyle(
            color: whiteColor,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}


