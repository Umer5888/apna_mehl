import 'package:ecommerce/helper/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'deposit_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

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
        title: Text('Select Payment Method',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: ListTile(
                horizontalTitleGap: 34,
                leading: Icon(Icons.credit_card),
                title: Text('Credit/Debit Card'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Image.network('https://iconape.com/wp-content/png_logo_vector/jazz-cash-logo.png',
                    width: 40, height: 40, fit: BoxFit.cover),
                title: Text('Jazzcash'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Image.network('https://seeklogo.com/images/E/easypaisa-logo-6B03C216AD-seeklogo.com.png',
                    width: 40, height: 40, fit: BoxFit.contain),
                title: Text('Easypaisa'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
          // child: Padding(
          //   padding: const EdgeInsets.all(15),
          //   child: Column(
          //     children: [
          //       Container(
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(5),
          //           border: Border.all(width: 0, color: Colors.red),
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.only(left: 15, right: 15),
          //           child: Row(
          //             children: [
          //               Image.network('https://iconape.com/wp-content/png_logo_vector/jazz-cash-logo.png',
          //                   width: 80, height: 60, fit: BoxFit.cover),
          //               Spacer(),
          //               InkWell(
          //                 onTap: () {
          //                   Get.to(DepositScreen());
          //                 },
          //                 child: Text('Add now',
          //                   style: TextStyle(
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.red,
          //                     fontSize: 18,
          //                   ),),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(height: 20),
          //       Container(
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(5),
          //           border: Border.all(width: 0, color: Colors.green),
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.only(left: 15, right: 15),
          //           child: Row(
          //             children: [
          //               Image.network('https://seeklogo.com/images/E/easypaisa-logo-6B03C216AD-seeklogo.com.png',
          //                   width: 80, height: 60, fit: BoxFit.contain),
          //               Spacer(),
          //               InkWell(
          //                 onTap: () {
          //                   Get.to(DepositScreen());
          //                 },
          //                 child: Text('Add now',
          //                   style: TextStyle(
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.green,
          //                     fontSize: 18,
          //                   ),),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(height: 20),
          //       Container(
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(5),
          //           border: Border.all(width: 0, color: Colors.brown)
          //         ),
          //         child: ListTile(
          //           leading: Icon(Icons.attach_money, size: 25,),
          //           title: Text('Cash on Delivery',
          //           style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //           ),),
          //           trailing: Icon(Icons.arrow_forward_ios, size: 15),
          //         ),
          //       )
          //     ],
          //   ),
          // )
      ),
    );
  }
}