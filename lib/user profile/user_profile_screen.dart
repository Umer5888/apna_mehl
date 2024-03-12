import 'package:ecommerce/helper/widgets.dart';
import 'package:ecommerce/order/deposit_history_screen.dart';
import 'package:ecommerce/order/wishlist_screen.dart';
import 'package:ecommerce/order/order_screen.dart';
import 'package:ecommerce/order/topup_screen.dart';
import 'package:ecommerce/user%20profile/address_screen.dart';
import 'package:ecommerce/user%20profile/coupons_screen.dart';
import 'package:ecommerce/user%20profile/edit_profile_screen.dart';
import 'package:ecommerce/user%20profile/q&a_screen.dart';
import 'package:ecommerce/user%20profile/settings_screen.dart';
import 'package:ecommerce/user%20profile/termsconditions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helper/config.dart';
import '../helper/configure.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key, required String title});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  int currentButton = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0XFFC8C8C8).withOpacity(0.1),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: InkWell(
                      onTap: () {
                        Get.to(SettingsScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.settings, size: 25),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              border: Border.all(width: 0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(500),
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.2)
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(70),
                                    child: Image.asset('assets/profile.jpg',
                                      width: 130, height: 130, fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0, bottom: 100, left: 90, right: 0,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              onTap: (){
                                Get.to(EditProfileScreen());
                              },
                              child: Card(
                                shape: CircleBorder(),
                                elevation: 0, surfaceTintColor: Colors.white, margin: EdgeInsets.all(40),
                                  child: Icon(CupertinoIcons.pen, size: 20,)),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('John Rambo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle,
                      size: 10, color: Colors.green),
                      SizedBox(width: 5),
                      Text('Active'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentButton = 2;
                          });
                        },
                        child: Text('Click Me',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: currentButton == 2? Colors.amber:Colors.black
                        ),),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentButton = 1;
                          });
                        },
                        child: Text('Click Me',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                              color: currentButton == 1? Colors.amber:Colors.black
                          ),),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentButton = 0;
                          });
                        },
                        child: Text('Click Me',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                              color: currentButton == 0? Colors.amber:Colors.black
                          ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Text('My Orders',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    Get.to(OrderScreen());
                                  },
                                  child: Text('View all',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Primarycolor,
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {Get.to(OrderScreen());},
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width * .25 - 5,
                                    child: Column(
                                      children: [
                                        Icon(Icons.account_balance_wallet_outlined, size: 30),
                                        SizedBox(height: 5),
                                        Text('To pay',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),),
                                      ],
                                    ),
                                  ),
                                ),
                                shortCard(context, title: 'To ship', icon: Icons.delivery_dining, onPressed: () {Get.to(OrderScreen());}),
                                shortCard(context, title: 'Delivered', icon: CupertinoIcons.cube_box, onPressed:() {Get.to(OrderScreen());}),
                                shortCard(context, title: 'Cancelled', icon: Icons.cached, onPressed:() {Get.to(OrderScreen());}),
                                shortCard(context, title: 'To review', icon: Icons.mark_unread_chat_alt_outlined, onPressed:() {Get.to(OrderScreen());}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Payments & Discounts',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              //shortCard(context, title: 'Cards', icon: Icons.credit_card, onPressed:null),
                              shortCard(context, title: 'Coupons', icon: CupertinoIcons.ticket, onPressed: () {
                                Get.to(CouponsScreen());}),
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
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                Text('My Wallet',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              //shortCard(context, title: 'Cards', icon: Icons.credit_card, onPressed:null),
                              shortCard(context, title: 'Topup', icon: CupertinoIcons.money_dollar_circle, onPressed: () {
                                Get.to(TopupScreen());}),
                              shortCard(context, title: 'History', icon: Icons.receipt_long_outlined, onPressed: () {
                                Get.to(DepositHistoryScreen());}),
                              shortCard(context, title: 'Terms & Conditions', icon: Icons.note_alt_outlined, onPressed: () {
                                Get.to(TermsConditionScreen());}),
                            ],
                          ),
                          // SizedBox(height: 15),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       child: Column(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: [
                          //           Text('PKR',
                          //             style: TextStyle(
                          //           color: Colors.black.withOpacity(0.5),
                          //           fontSize: 15,
                          //             ),),
                          //           SizedBox(height: 15),
                          //           Text('0',
                          //             style: TextStyle(
                          //               color: Colors.black.withOpacity(0.5),
                          //               fontSize: 15,)),
                          //         ],
                          //       ),
                          //     ),
                          //     // Container(
                          //     //   child: Divider(color: Colors.black.withOpacity(0.5), height: 50,),
                          //     //   decoration: BoxDecoration(
                          //     //     color: Colors.black.withOpacity(0.5),
                          //     //     borderRadius: BorderRadius.circular(500),
                          //     //     border: Border.all(width: 1),
                          //     //   ),
                          //     // ),
                          //     // Container(
                          //     //   width: MediaQuery.of(context).size.width* 0.5 -1,
                          //     //   child: Column(
                          //     //     children: [
                          //     //       Text('Vouchers',
                          //     //         style: TextStyle(
                          //     //           color: Colors.black.withOpacity(0.5),
                          //     //           fontSize: 15,
                          //     //         ),),
                          //     //       SizedBox(height: 15),
                          //     //       Text('0',
                          //     //           style: TextStyle(
                          //     //             color: Colors.black.withOpacity(0.5),
                          //     //             fontSize: 15,)),
                          //     //     ],
                          //     //   ),
                          //     // ),
                          //   ],
                          // ),
                          // SizedBox(height: 15),
                          // InkWell(
                          //   onTap: () {
                          //     Get.to(TopupScreen());
                          //   },
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(15),
                          //       border: Border.all(width: 1, color: Color(0XFFFA5507)),
                          //     ),
                          //     child: Padding(
                          //       padding: const EdgeInsets.only(right: 5, left: 5),
                          //       child: Text('Top up >',
                          //         style: TextStyle(
                          //           fontSize: 12,
                          //             color: Color(0XFFFA5507)
                          //         ),),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(height: 15)
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(15, 30, 20, 15),
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //         color: Color(0XFFFA5507).withOpacity(0.1),
                          //     ),
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(5.0),
                          //       child: Row(
                          //         children: [
                          //           Icon(Icons.account_balance_wallet_outlined, color: Color(0XFFFA5507)),
                          //           SizedBox(width: 5),
                          //           Text('One-click checkout >',
                          //           style: TextStyle(
                          //             fontSize: 15,
                          //             color: Color(0XFFFA5507),
                          //           ),),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Services',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {Get.to(QuestionScreen());},
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .25 - 5,
                                  child: Column(
                                    children: [
                                      Icon(Icons.headset_mic_outlined, size: 30),
                                      SizedBox(height: 5),
                                      Text('Help Center',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
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
                                                  borderRadius: BorderRadius.circular(20.0),
                                                ),
                                                hintText: "Description",
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          ElevatedButton(
                                            onPressed: (){},
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor: Primarycolor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                              minimumSize: Size(350, 50),
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
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .25 - 5,
                                  child: Column(
                                    children: [
                                      Icon(CupertinoIcons.pen, size: 30),
                                      SizedBox(height: 5),
                                      Text('Suggestions',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                              shortCard(context, title: 'Q&A', icon: Icons.live_help_outlined, onPressed: () {Get.to(QuestionScreen());}),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('My Account',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              InkWell(
                               onTap: () {Get.to(WishlistScreen(title: 'title'));},
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .25 - 5,
                                  child: Column(
                                    children: [
                                      Icon(Icons.favorite_border, size: 30),
                                      SizedBox(height: 5),
                                      Text('Wishlist',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                              shortCard(context, title: 'Address', icon: Icons.location_on_outlined, onPressed: () {Get.to(AddressScreen());}),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
        )
    );
  }
}
