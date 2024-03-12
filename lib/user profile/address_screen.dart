import 'package:ecommerce/helper/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        leadingWidth: 50,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
        title: Text('My Address',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                bottomSheetDialog();
              },
              child: Text('Add',
              style: TextStyle(
                fontSize: 20,
                color: Primarycolor,
              ),),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Color(0XFFC8C8C8).withOpacity(0.2),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Ahmed',
                            style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                              ),),
                            Spacer(),
                             InkWell(
                               onTap: () {
                                 bottomSheetDialog();
                               },
                               child: Text('Edit',
                                style: TextStyle(
                                  fontSize: 18,
                                ),),
                             ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1, color: Primarycolor),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5, left: 5),
                                child: Text('Home',
                                style: TextStyle(
                                    color: Primarycolor,
                                ),),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1, color: Primarycolor),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5, left: 5),
                                child: Text('Default Delivery Address',
                                  style: TextStyle(
                                    color: Primarycolor,
                                  ),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                            child: Text('Shahruk-ne-Alam Colony H Block, House# 528, Punjab, Multan')),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('(+92 315XXXXX)',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bottomSheetDialog(){
    return showModalBottomSheet<void>(
      // context and builder are
      // required properties in this widget
      context: context,
      builder: (BuildContext context) {
        // we set up a container inside which
        // we create center column and display text

        // Returning SizedBox instead of a Container
        return Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text('Edit',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  Spacer(),
                  InkWell(
                    onTap: () {Get.back();},
                      child: Icon(CupertinoIcons.multiply, size: 25)),
                ],
              ),
              SizedBox(height: 10),
              TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  )
              ),
              SizedBox(height: 10),
              TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Address',
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  )
              ),
              SizedBox(height: 10),
              TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Ph#',
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  )
              ),
              SizedBox(height: 10),

            ],
          ),
        );
      },
    );
  }
}