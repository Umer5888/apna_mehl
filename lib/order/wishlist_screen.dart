import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/order/cart_screen.dart';
import 'package:ecommerce/order/topup_screen.dart';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key, required String title});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Primarycolor,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () {Get.back();},
              child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
          title: Text('Wishlist',
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
                            padding: const EdgeInsets.only(top: 20),
                            child: ListView.builder(
                                itemCount: 4,
                                shrinkWrap: true,
                                // scrollDirection: ,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Dismissible(
                                    key: Key(index.toString()),
                                    background: Container(color: Colors.green),
                                    secondaryBackground: Container(color: Colors.red,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Icon(Icons.delete, color: Colors.white, size: 35,),
                                      ),),
                                    onDismissed: (direction) {
                                      if (direction == DismissDirection.startToEnd) {
                                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$index item saved')));
                                      }
                                      else (ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$index item deleted'))));
                                    },
                                    child: Stack(
                                      children: [
                                        Card(
                                          elevation: 2,
                                          surfaceTintColor: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.2,
                                                          child: Icon(Icons.circle,
                                                            color: Color(0xFFfde8d7),
                                                            size: 100,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Transform.rotate(
                                                            angle: 19,
                                                            child: Image.asset('assets/bata.png', width: 100, height: 100),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(context).size.width -144,
                                                          child: Row(
                                                            children: [
                                                              Text('Nike Air Max 200',
                                                                style: TextStyle(
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              Icon(Icons.favorite, color: Primarycolor,)
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 3),
                                                        Text('Brand: Nike, Size: 42',
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
                                                                Text('Verified',
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
                                                        Container(
                                                          width: MediaQuery.of(context).size.width -144,
                                                          child: Row(
                                                            children: [
                                                              Text('\$300',
                                                                style: TextStyle(
                                                                  fontSize: 12,
                                                                  decoration: TextDecoration.lineThrough,
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              InkWell(
                                                                onTap: () {Get.to(CartScreen(title: 'title'));},
                                                                child: Container(
                                                                  decoration: BoxDecoration(
                                                                    color: Primarycolor,
                                                                    borderRadius: BorderRadius.circular(5),
                                                                  ),
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(left: 10, right: 10),
                                                                    child: Text('Add to cart',
                                                                    style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 13,
                                                                    ),),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   color: Colors.white,
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 10, right: 10),
                //     child: Row(
                //       children: [
                //         Text('Delete',
                //           style: TextStyle(
                //             color: Primarycolor,
                //           ),),
                //         Spacer(),
                //         InkWell(
                //           onTap: () {
                //             showModalBottomSheet<void>(
                //               // context and builder are
                //               // required properties in this widget
                //               context: context,
                //               builder: (BuildContext context) {
                //                 // we set up a container inside which
                //                 // we create center column and display text
                //
                //                 // Returning SizedBox instead of a Container
                //                 return Padding(
                //                   padding: const EdgeInsets.all(10),
                //                   child: Column(
                //                     mainAxisSize: MainAxisSize.min,
                //                     children: [
                //                       Row(
                //                         mainAxisAlignment: MainAxisAlignment.end,
                //                         children: [
                //                           InkWell(
                //                               onTap: () {
                //                                 Get.back();
                //                               },
                //                               child: Icon(CupertinoIcons.multiply)),
                //                         ],
                //                       ),
                //                       SizedBox(height: 30),
                //                       Row(
                //                         children: [
                //                           Text('Subtotal',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                           Spacer(),
                //                           Text('\$33',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                         ],
                //                       ),
                //                       Divider(height: 0),
                //                       SizedBox(height: 15),
                //                       Row(
                //                         children: [
                //                           Text('Total Products',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                           Spacer(),
                //                           Text('4',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                         ],
                //                       ),
                //                       SizedBox(height: 10),
                //                       Row(
                //                         children: [
                //                           Text('Taxes',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                           Spacer(),
                //                           Text('\$25',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                         ],
                //                       ),
                //                       SizedBox(height: 10),
                //                       Row(
                //                         children: [
                //                           Text('Delivery Charges',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                           Spacer(),
                //                           Text('\$8',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                         ],
                //                       ),
                //                       SizedBox(height: 10),
                //                       Row(
                //                         children: [
                //                           Text('Discount',
                //                             style: TextStyle(
                //                                 fontSize: 20
                //                             ),),
                //                           Spacer(),
                //                           Text('-\$10',
                //                             style: TextStyle(
                //                               fontSize: 20,
                //                               color: Colors.red,
                //                             ),),
                //                         ],
                //                       ),
                //                       SizedBox(height: 15),
                //                       Divider(height: 0),
                //                       Row(
                //                         children: [
                //                           Text('Total',
                //                             style: TextStyle(
                //                               fontSize: 25,
                //                               fontWeight: FontWeight.bold,
                //                             ),),
                //                           Spacer(),
                //                           Text('\$33',
                //                             style: TextStyle(
                //                               fontSize: 25,
                //                               fontWeight: FontWeight.bold,
                //                               color: Primarycolor,
                //                             ),),
                //                         ],
                //                       ),
                //                     ],
                //                   ),
                //                 );
                //               },
                //             );
                //           },
                //           child: Column(
                //             children: [
                //               Row(
                //                 children: [
                //                   Text('Delivery: ',
                //                     style: TextStyle(
                //                       color: Colors.black.withOpacity(0.5),
                //                     ),),
                //                   Text('Rs. 0',
                //                     style: TextStyle(
                //                       color: Primarycolor,
                //                     ),),
                //                 ],
                //               ),
                //               Row(
                //                 children: [
                //                   Text('Total: ',
                //                     style: TextStyle(
                //                       fontSize: 15,
                //                     ),),
                //                   Text('Rs. 0',
                //                     style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       color: Primarycolor,
                //                       fontSize: 15,
                //                     ),),
                //                 ],
                //               )
                //             ],
                //           ),
                //         ),
                //         SizedBox(width: 10),
                //         ElevatedButton(
                //           onPressed: () {
                //             Get.to(TopupScreen());
                //           },
                //           style: ElevatedButton.styleFrom(
                //               backgroundColor: Color(0XFFFA5507),
                //               minimumSize: Size(0, 35),
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(10)
                //               )
                //           ),
                //           child: Text('Proceed to Payment',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        )
    );
  }
}
