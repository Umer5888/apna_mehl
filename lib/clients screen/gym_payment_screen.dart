import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GymPaymentScreen extends StatefulWidget {
  const GymPaymentScreen({super.key});

  @override
  State<GymPaymentScreen> createState() => _GymPaymentScreenState();
}

class _GymPaymentScreenState extends State<GymPaymentScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 50,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text('Program Schedule',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins'
          ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFFECECEC)
              ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/notifia.png', width: 20, height: 20),
                )),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Text('Select Program Kick-off Date',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF4781B1),
                            fontFamily: 'Poppins'
                        ),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Color(0XFFAAAAAA)),
                    ),
                    child: ListTile(
                      minVerticalPadding: 25,
                      title: Text('Monthly without nutrition',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins'
                        ),),
                      subtitle: Text('200 KWD/month',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0XFFAAAAAA),
                            fontFamily: 'Poppins'
                        ),),
                      trailing: Icon(Icons.check, color: Colors.green, size: 30,),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Divider(height: 5, indent: 20, endIndent: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListTile(
                    dense: true,
                    minVerticalPadding: 0,
                    title: Text('Subtotal',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0XFFAAAAAA),
                    ),),
                    trailing: Text('200 KWD',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListTile(
                    dense: true,
                    title: Text('Tax',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Color(0XFFAAAAAA),
                      ),),
                    trailing: Text('0.00 KWD',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListTile(
                    dense: true,
                    title: Text('Total',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Color(0XFFAAAAAA),
                      ),),
                    trailing: Text('200 KWD',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),),
                  ),
                ),
                Divider(height: 5, indent: 20, endIndent: 20,),
                ListTile(
                  dense: true,
                  minVerticalPadding: 0,
                  leading: Icon(Icons.circle, color: Color(0XFFD9D9D9),),
                  title: Text('Visa/Mastercard',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),),
                  trailing: Image.asset('assets/images/visa.png', width: 50, height: 50,)
                ),
                ListTile(
                    dense: true,
                    minVerticalPadding: 0,
                    leading: Icon(Icons.circle, color: Color(0XFFD9D9D9),),
                    title: Text('Apple Pay',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),),
                    trailing: Image.asset('assets/images/applepay.png', width: 50, height: 50,)
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(GymPaymentScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF4781B1),
                              minimumSize: Size(0, 50),
                            ),
                            child: Text('Pay',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Poppins'
                              ),),),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}