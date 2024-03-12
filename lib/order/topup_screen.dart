import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/order/deposit_screen.dart';
import 'package:ecommerce/user%20profile/address_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TopupScreen extends StatefulWidget {
  const TopupScreen({super.key});

  @override
  State<TopupScreen> createState() => _TopupScreenState();
}

class _TopupScreenState extends State<TopupScreen> {

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
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
        title: Text('Add Method',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0, color: Colors.red),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        Image.network('https://iconape.com/wp-content/png_logo_vector/jazz-cash-logo.png',
                            width: 80, height: 60, fit: BoxFit.cover),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(DepositScreen());
                          },
                          child: Text('Add now',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 18,
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0, color: Colors.green),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        Image.network('https://seeklogo.com/images/E/easypaisa-logo-6B03C216AD-seeklogo.com.png',
                            width: 80, height: 60, fit: BoxFit.contain),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(DepositScreen());
                          },
                          child: Text('Add now',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 18,
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}