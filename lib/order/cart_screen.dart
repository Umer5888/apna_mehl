import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/order/order_success_screen.dart';
import 'package:ecommerce/order/payment_screen.dart';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../user profile/address_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required String title});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('My Cart',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),),
      ),
        body: SafeArea(
            child: Container(
              color: Color(0XFFC8C8C8).withOpacity(0.2),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            // for(int i = 0; i < 10; ++i)
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: ListView.builder(
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  // scrollDirection: ,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (BuildContext context, int index) {
                                    return Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                          child: Container(
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10, top: 10),
                                                    child: Row(
                                                      children: [
                                                        Text('Noman & Sons LTD',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold,
                                                        ),),
                                                        SizedBox(width: 5),
                                                        Icon(Icons.arrow_forward_ios, color: Colors.black.withOpacity(0.5), size: 15),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  SizedBox(
                                                    width: MediaQuery.of(context).size.width*0.8,
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                                                        child: Text('Spend Rs.599 enjoy free shipping for Express,Standard delivery option'),
                                                      )),
                                                  Dismissible(
                                                    key: Key(index.toString()),
                                                    background: Container(color: Colors.green),
                                                    secondaryBackground: Container(color: Colors.red,
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(right: 20),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: [
                                                            Icon(Icons.delete, color: Colors.white, size: 35,),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    onDismissed: (direction) {
                                                      if (direction == DismissDirection.startToEnd) {
                                                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$index item saved')));
                                                      }
                                                      else (ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$index item deleted'))));
                                                    },
                                                    child: Row(
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
                                                            // SizedBox(height: 3),
                                                            // Container(
                                                            //   decoration: BoxDecoration(
                                                            //     borderRadius: BorderRadius.circular(5),
                                                            //     border: Border.all(width: 1, color: Primarycolor)
                                                            //   ),
                                                            //   child: Padding(
                                                            //     padding: const EdgeInsets.only(left: 5, right: 5),
                                                            //     child: Row(
                                                            //       children: [
                                                            //         Text('Verified',
                                                            //           style: TextStyle(
                                                            //             fontSize: 12,
                                                            //             color: Primarycolor,
                                                            //           ),
                                                            //         ),
                                                            //       ],
                                                            //     ),
                                                            //   ),
                                                            // ),
                                                            SizedBox(height: 5),
                                                            Text('\$240',
                                                              style: TextStyle(
                                                                color: Color(0XFFFA5507),
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                            Text('\$300',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                decoration: TextDecoration.lineThrough,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Spacer(),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 0),
                                                          child: Column(
                                                            children: [
                                                              Icon(CupertinoIcons.minus_circle, size: 15),
                                                              Text('1'),
                                                              Icon(CupertinoIcons.add_circled, size: 15),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Divider(height: 0),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 15),
                                                    child: Dismissible(
                                                      key: Key(index.toString()),
                                                      background: Container(color: Colors.green),
                                                      secondaryBackground: Container(color: Colors.red,
                                                        child: Padding(
                                                          padding: const EdgeInsets.only(right: 20),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Icon(Icons.delete, color: Colors.white, size: 35,),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      onDismissed: (direction) {
                                                        if (direction == DismissDirection.startToEnd) {
                                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$index item saved')));
                                                        }
                                                        else (ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$index item deleted'))));
                                                      },
                                                      child: Row(
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
                                                              // SizedBox(height: 3),
                                                              // Container(
                                                              //   decoration: BoxDecoration(
                                                              //     borderRadius: BorderRadius.circular(5),
                                                              //     border: Border.all(width: 1, color: Primarycolor)
                                                              //   ),
                                                              //   child: Padding(
                                                              //     padding: const EdgeInsets.only(left: 5, right: 5),
                                                              //     child: Row(
                                                              //       children: [
                                                              //         Text('Verified',
                                                              //           style: TextStyle(
                                                              //             fontSize: 12,
                                                              //             color: Primarycolor,
                                                              //           ),
                                                              //         ),
                                                              //       ],
                                                              //     ),
                                                              //   ),
                                                              // ),
                                                              SizedBox(height: 5),
                                                              Text('\$240',
                                                                style: TextStyle(
                                                                  color: Color(0XFFFA5507),
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              Text('\$300',
                                                                style: TextStyle(
                                                                  fontSize: 12,
                                                                  decoration: TextDecoration.lineThrough,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Spacer(),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 0),
                                                            child: Column(
                                                              children: [
                                                                Icon(CupertinoIcons.minus_circle, size: 15),
                                                                Text('1'),
                                                                Icon(CupertinoIcons.add_circled, size: 15),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Text('Delete',
                          style: TextStyle(
                            color: Primarycolor,
                          ),),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet<void>(
                                // context and builder are
                                // required properties in this widget
                                context: context,
                                builder: (BuildContext context) {
                                  // we set up a container inside which
                                  // we create center column and display text

                                  // Returning SizedBox instead of a Container
                                  return Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                                child: Icon(CupertinoIcons.multiply)),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Text('Subtotal',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                            Spacer(),
                                            Text('\$33',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Divider(height: 0),
                                        SizedBox(height: 15),
                                        Row(
                                          children: [
                                            Text('Total Products',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                            Spacer(),
                                            Text('4',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Text('Taxes',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                            Spacer(),
                                            Text('\$25',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Text('Delivery Charges',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                            Spacer(),
                                            Text('\$8',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Text('Discount',
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),),
                                            Spacer(),
                                            Text('-\$10',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.red,
                                              ),),
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        Divider(height: 0),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Text('Total',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Spacer(),
                                            Text('\$33',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Primarycolor,
                                              ),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Delivery: ',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),),
                                    Text('Rs. 0',
                                      style: TextStyle(
                                        color: Primarycolor,
                                      ),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Total: ',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),),
                                    Text('Rs. 0',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Primarycolor,
                                      fontSize: 15,
                                    ),),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              Get.bottomSheet(
                                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide(style: BorderStyle.solid)),
                                  backgroundColor:Colors.white,
                                Container(
                                  // width: MediaQuery.of(context).size.width,
                                  // height: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Spacer(),
                                          Text('Buy Now',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          Spacer(),
                                          InkWell(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Icon(CupertinoIcons.multiply, size: 20)),
                                          SizedBox(width: 20),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Divider(height: 0),
                                      Expanded(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          color: Color(0XFFC8C8C8).withOpacity(0.2),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Container(
                                                  color: Colors.white,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius: BorderRadius.circular(10),
                                                              child: Image.network('https://www.bata.com.pk/cdn/shop/products/889-9017-_2.jpg?v=1635323991',
                                                                  width: 90, fit: BoxFit.cover),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text('USD 85',
                                                                  style: TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 20,
                                                                    color: Primarycolor,
                                                                  ),),
                                                                Text('USD 98',
                                                                  style: TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 12,
                                                                    color: Colors.black.withOpacity(0.5),
                                                                    decoration: TextDecoration.lineThrough,
                                                                  ),),
                                                                Text('-4%'),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Quantity'),
                                                            Spacer(),
                                                            Icon(CupertinoIcons.minus_circle),
                                                            Text('1'),
                                                            Icon(CupertinoIcons.add_circled),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  color: Colors.white,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: 15),
                                                        InkWell(
                                                          onTap: () {
                                                            Get.to(AddressScreen());
                                                          },
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Icon(CupertinoIcons.location_solid, color: Primarycolor),
                                                              SizedBox(width: 5),
                                                              Container(
                                                                width: MediaQuery.of(context).size.width*0.7,
                                                                child: Text('Shahruk-ne-Alam Colony, H Block, House # 56, Near Bilal Masjid Chock',
                                                                  style: TextStyle(
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.bold,
                                                                  ),),),
                                                              Spacer(),
                                                              Icon(Icons.arrow_forward_ios, size: 15,),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.circular(5),
                                                                  border: Border.all(width: 0, color: Primarycolor)
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Text('Standard Delivery |USD 25',
                                                                      style: TextStyle(
                                                                        fontWeight: FontWeight.bold,
                                                                        color: Primarycolor,
                                                                      ),),
                                                                    Text('Receive by 17 Feb - 22 Feb ')
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 20),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                InkWell(
                                                  onTap: () {
                                                    Get.bottomSheet(
                                                        backgroundColor: Colors.white,
                                                        Column(
                                                          children: [
                                                            SizedBox(height: 15),
                                                            Row(
                                                              children: [
                                                                Spacer(),
                                                                Text('Promo Code',
                                                                  style: TextStyle(
                                                                      fontWeight: FontWeight.bold,
                                                                      fontSize: 18
                                                                  ),),
                                                                Spacer(),
                                                                InkWell(
                                                                    onTap: () {Get.back();},
                                                                    child: Icon(CupertinoIcons.multiply)),
                                                                SizedBox(width: 20),
                                                              ],
                                                            ),
                                                            Divider(height: 15, color: Colors.black.withOpacity(0.2)),
                                                            SizedBox(height: 5),
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                TextFormField(
                                                                  decoration: InputDecoration(
                                                                      contentPadding: EdgeInsets.all(5),
                                                                      constraints: BoxConstraints(
                                                                        maxWidth: 250,
                                                                      ),
                                                                      enabled: true,
                                                                      filled: true,
                                                                      focusColor: Primarycolor,
                                                                      fillColor: Color(0XFFC8C8C8).withOpacity(0.2),
                                                                      enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        borderSide: BorderSide(color: Color(0XFFC8C8C8).withOpacity(0.2),),
                                                                      ),
                                                                      focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        borderSide: BorderSide(color: Color(0XFFC8C8C8).withOpacity(0.2),),
                                                                      ),
                                                                      isDense: true,
                                                                      hintText: 'Enter Promo Code',
                                                                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.5))
                                                                  ),
                                                                ),
                                                                SizedBox(width: 10),
                                                                ElevatedButton(
                                                                  onPressed: () {},
                                                                  style: ElevatedButton.styleFrom(
                                                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                                                      minimumSize: Size(0, 30),
                                                                      backgroundColor: Primarycolor,
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(5)
                                                                      )
                                                                  ),
                                                                  child: Text('APPLY',
                                                                    style: TextStyle(
                                                                        fontSize: 15,
                                                                        color: Colors.white
                                                                    ),),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        )
                                                    );
                                                  },
                                                  child: Container(
                                                    color: Colors.white,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                                      child: ListTile(
                                                        contentPadding: EdgeInsets.zero,
                                                        leading: Icon(Icons.local_offer_outlined, color: Primarycolor),
                                                        title: Text('Promo Code',
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                          ),),
                                                        trailing: Text('Enter Coupon Code',
                                                          style: TextStyle(
                                                              color: Colors.black.withOpacity(0.5)
                                                          ),),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Container(
                                                  color: Colors.white,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text('Order Summary',
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.bold,
                                                              ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 5),
                                                        Row(
                                                          children: [
                                                            Text('Items Total',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.black.withOpacity(0.5),
                                                              ),),
                                                            Spacer(),
                                                            Text('USD 70',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.black.withOpacity(0.5),
                                                              ),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Delivery Fee',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.black.withOpacity(0.5),
                                                              ),),
                                                            Spacer(),
                                                            Text('USD 10',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.black.withOpacity(0.5),
                                                              ),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Total Payment',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.black.withOpacity(0.5),
                                                              ),),
                                                            Spacer(),
                                                            Text('USD 80',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.black.withOpacity(0.5),
                                                              ),),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                InkWell(
                                                  onTap: () {
                                                    Get.to(AddressScreen());
                                                    // Get.bottomSheet(
                                                    //   backgroundColor: Colors.white,
                                                    //   Column(
                                                    //     children: [
                                                    //       SizedBox(height: 10),
                                                    //       Row(
                                                    //         children: [
                                                    //           Spacer(),
                                                    //           Text('Email and Billing Information',
                                                    //             style: TextStyle(
                                                    //               fontSize: 18,
                                                    //               fontWeight: FontWeight.bold,
                                                    //             ),),
                                                    //           Spacer(),
                                                    //           Icon(CupertinoIcons.multiply, size: 20),
                                                    //           SizedBox(width: 20),
                                                    //         ],
                                                    //       ),
                                                    //       Divider(height: 10, color: Colors.black.withOpacity(0.2)),
                                                    //       SizedBox(height: 15),
                                                    //       Padding(
                                                    //         padding: const EdgeInsets.only(left: 12),
                                                    //         child: Row(
                                                    //           children: [
                                                    //             Text('Enter Email',
                                                    //               style: TextStyle(
                                                    //                 fontWeight: FontWeight.bold,
                                                    //                 fontSize: 15,
                                                    //               ),),
                                                    //           ],
                                                    //         ),
                                                    //       ),
                                                    //       SizedBox(height: 5),
                                                    //       TextFormField(
                                                    //         decoration: InputDecoration(
                                                    //             contentPadding: EdgeInsets.all(5),
                                                    //             constraints: BoxConstraints(
                                                    //               maxWidth: 400,
                                                    //             ),
                                                    //             enabled: true,
                                                    //             filled: true,
                                                    //             focusColor: Primarycolor,
                                                    //             fillColor: Color(0XFFC8C8C8).withOpacity(0.2),
                                                    //             enabledBorder: OutlineInputBorder(
                                                    //               borderRadius: BorderRadius.circular(5),
                                                    //               borderSide: BorderSide(color: Color(0XFFC8C8C8).withOpacity(0.2),),
                                                    //             ),
                                                    //             focusedBorder: OutlineInputBorder(
                                                    //               borderRadius: BorderRadius.circular(5),
                                                    //               borderSide: BorderSide(color: Color(0XFFC8C8C8).withOpacity(0.2),),
                                                    //             ),
                                                    //             isDense: true,
                                                    //             hintText: 'Email',
                                                    //             hintStyle: TextStyle(color: Colors.black.withOpacity(0.5))
                                                    //         ),
                                                    //       ),
                                                    //       SizedBox(height: 10),
                                                    //       Padding(
                                                    //         padding: const EdgeInsets.only(left: 12),
                                                    //         child: Row(
                                                    //           children: [
                                                    //             Text('Enter Billing Information',
                                                    //               style: TextStyle(
                                                    //                 fontWeight: FontWeight.bold,
                                                    //                 fontSize: 15,
                                                    //               ),),
                                                    //           ],
                                                    //         ),
                                                    //       ),
                                                    //       SizedBox(height: 5),
                                                    //       TextFormField(
                                                    //         decoration: InputDecoration(
                                                    //             contentPadding: EdgeInsets.all(5),
                                                    //             constraints: BoxConstraints(
                                                    //               maxWidth: 400,
                                                    //             ),
                                                    //             enabled: true,
                                                    //             filled: true,
                                                    //             focusColor: Primarycolor,
                                                    //             fillColor: Color(0XFFC8C8C8).withOpacity(0.2),
                                                    //             enabledBorder: OutlineInputBorder(
                                                    //               borderRadius: BorderRadius.circular(5),
                                                    //               borderSide: BorderSide(color: Color(0XFFC8C8C8).withOpacity(0.2),),
                                                    //             ),
                                                    //             focusedBorder: OutlineInputBorder(
                                                    //               borderRadius: BorderRadius.circular(5),
                                                    //               borderSide: BorderSide(color: Color(0XFFC8C8C8).withOpacity(0.2),),
                                                    //             ),
                                                    //             isDense: true,
                                                    //             hintText: 'Billing Information',
                                                    //             hintStyle: TextStyle(color: Colors.black.withOpacity(0.5))
                                                    //         ),
                                                    //       ),
                                                    //     ],
                                                    //   ),
                                                    // );
                                                  },
                                                  child: Container(
                                                    color: Colors.white,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                                      child: ListTile(
                                                        contentPadding: EdgeInsets.zero,
                                                        leading: Icon(Icons.receipt, color: Primarycolor),
                                                        title: Text('Email and Billing Information',
                                                          style:  TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                          ),),
                                                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                InkWell(
                                                  onTap: () {
                                                    Get.to(PaymentScreen());
                                                  },
                                                  child: Container(
                                                    color: Colors.white,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                                      child: ListTile(
                                                        contentPadding: EdgeInsets.zero,
                                                        leading: Icon(Icons.receipt, color: Primarycolor),
                                                        title: Text('Payment Method',
                                                          style:  TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                          ),),
                                                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurStyle: BlurStyle.outer,
                                              offset: Offset(0, 0),
                                              blurRadius: 1,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text('Total:'),
                                                      SizedBox(width: 5),
                                                      Text('USD. 105',
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Primarycolor,
                                                            fontSize: 16
                                                        ),),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('VAT included, where applicable',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black.withOpacity(0.5),
                                                        ),),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Get.to(OrderSuccessScreen());
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                                  minimumSize: Size(0, 35),
                                                  backgroundColor: Primarycolor,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5)
                                                  ),
                                                ),
                                                child: Text('Place Order',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),),),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFFFA5507),
                              minimumSize: Size(0, 30),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                              )
                            ),
                            child: Text('Proceed to Payment',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        )
    );
  }
}
