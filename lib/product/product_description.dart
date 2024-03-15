import 'package:card_swiper/card_swiper.dart';
import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/order/cart_screen.dart';
import 'package:ecommerce/order/order_success_screen.dart';
import 'package:ecommerce/product/brand_screen.dart';
import 'package:ecommerce/product/related_questions_screen.dart';
import 'package:ecommerce/product/reviews_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:get/get.dart';
import '../order/payment_screen.dart';
import '../user profile/address_screen.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key, required String title});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/banner.jpg','assets/banner1.jpg',
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
        body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                  child: Icon(Icons.arrow_back_ios_new, size: 25)),
                              SizedBox(width: 15),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(left: 20),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      borderSide: BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                        color: Colors.black,
                                      ),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      borderSide: BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                         color: Colors.black,
                                         // color: Primarycolor,
                                      ),
                                    ),
                                    constraints: BoxConstraints(
                                      maxHeight: 40,
                                    ),
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    filled: true,
                                    fillColor:  const Color(0xFFF6F6F6),
                                    suffixIcon: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Icon(Icons.search, color: Colors.white,)
                                    ),
                                    hintText: 'Search Products', hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 250,
                          child: Swiper(
                            itemBuilder: (context, index) {
                              return Image.asset(
                                images[index],
                                fit: BoxFit.fill,
                              );
                            },
                            autoplay: true,
                            itemCount: images.length,
                            pagination: const SwiperPagination(builder: SwiperPagination.dots),
                            // control: const SwiperControl(),
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Container(
                        //       width: 80, height: 60,
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(16),
                        //         border: Border.all(color: Colors.orange)
                        //       ),
                        //       child: Row(
                        //         children: [
                        //           Padding(
                        //             padding: const EdgeInsets.only(left: 15),
                        //             child: Image.asset('assets/sneaker.png',
                        //                 width: 50, height: 50),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(width: 10),
                        //     Container(
                        //       width: 80, height: 60,
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(16),
                        //           border: Border.all(color: Colors.orange)
                        //       ),
                        //       child: Row(
                        //         children: [
                        //           Padding(
                        //             padding: const EdgeInsets.only(left: 15),
                        //             child: Image.asset('assets/sneaker.png',
                        //                 width: 50, height: 50),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(width: 10),
                        //     Container(
                        //       width: 80, height: 60,
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(16),
                        //           border: Border.all(color: Colors.orange)
                        //       ),
                        //       child: Row(
                        //         children: [
                        //           Padding(
                        //             padding: const EdgeInsets.only(left: 15),
                        //             child: Image.asset('assets/sneaker.png',
                        //                 width: 50, height: 50),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     SizedBox(width: 10),
                        //     Container(
                        //       width: 80, height: 60,
                        //       decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(16),
                        //           border: Border.all(color: Colors.orange)
                        //       ),
                        //       child: Row(
                        //         children: [
                        //           Padding(
                        //             padding: const EdgeInsets.only(left: 15),
                        //             child: Image.asset('assets/sneaker.png',
                        //                 width: 50, height: 50),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        SizedBox(height: 15),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.9 -8,
                                      child: Text('NIKE AIR MAX 200NIKE AIR MAX 200NIKE AIR MAX 200NIKE AIR MAX 200',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 2),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  children: [
                                    Text('\$',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Text('240',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text('\$300',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black.withOpacity(0.5),
                                        decoration: TextDecoration.lineThrough,
                                      ),),
                                    SizedBox(width: 5),
                                    Text('-22%',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),),
                                    Spacer(),
                                    Icon(Icons.favorite_border, size: 18,),
                                    Text('65')
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.delivery_dining_rounded,
                                        color: Colors.orangeAccent),
                                    SizedBox(width: 10),
                                    Text('Standard Delivery',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text('3 Jan - 18 Jan',
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios,
                                        color: Colors.orangeAccent,
                                        size: 15),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () {Get.to(BrandScreen());},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15, right: 15,),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(55),
                                        child: Image.network('https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/10190851/Louis-Vuitton-1.png',
                                          fit: BoxFit.cover, height: 25,),
                                      ),
                                      SizedBox(width: 10),
                                      Text('LOUIS VUITTON',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      SizedBox(width: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          color: Colors.grey.shade200,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                          child: Text('94% Positive Review'),
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios, size: 15,)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: [
                                    Text('Variations',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.black12)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text('4 GB',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.black12)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text('4 GB',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.black12)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text('4 GB',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.black12)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text('4 GB',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: [
                                    Text('Available Sizes',
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.black12)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text('4 GB',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.black12)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text('4 GB',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.black12)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text('4 GB',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.black12)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text('4 GB',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, left: 15),
                                child: Row(
                                  children: [
                                    Text('Color',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 8, color: Colors.orange.withOpacity(0.2)),
                                      ),
                                      child: Icon(Icons.circle,
                                        color: Colors.orange,
                                        size: 25,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 8, color: Colors.purple.withOpacity(0.2)),
                                      ),
                                      child: Icon(Icons.circle,
                                        color: Colors.purple,
                                        size: 25,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 8, color: Colors.black54.withOpacity(0.2)),
                                      ),
                                      child: Icon(Icons.circle,
                                        color: Colors.black54,
                                        size: 25,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 8, color: Colors.redAccent.withOpacity(0.2)),
                                      ),
                                      child: Icon(Icons.circle,
                                        color: Colors.redAccent,
                                        size: 25,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 8, color: Colors.blue.withOpacity(0.2)),
                                      ),
                                      child: Icon(Icons.circle,
                                        color: Colors.blue,
                                        size: 25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(20, 10, 25, 10),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.delivery_dining_rounded,
                                          color: Colors.orangeAccent),
                                      SizedBox(width: 10),
                                      Text('Standard Delivery',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text('3 Jan - 18 Jan',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.arrow_forward_ios,
                                          color: Colors.orangeAccent,
                                          size: 15),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: [
                                    Text('Ratings & Reviews',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('3.7',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 45,
                                          ),),
                                        Row(
                                          children: [
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_half_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Text('58 ratings',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey
                                          ),)
                                        // Container(
                                        //   decoration: BoxDecoration(
                                        //     color: Color(0XFFFACA51),
                                        //     borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(2), bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)),
                                        //   ),
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.only(left: 5, right: 5),
                                        //     child: Text('Good',
                                        //       style: TextStyle(
                                        //         color: Colors.white,
                                        //       ),),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            SizedBox(width: 5),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 70,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.black12,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 5),
                                            Text('34',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey
                                              ),)
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            SizedBox(width: 5),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 50,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.black12,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 5),
                                            Text('15',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey
                                              ),)
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            SizedBox(width: 5),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 30,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.black12,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 5),
                                            Text('10',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey
                                              ),)
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            SizedBox(width: 5),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 30,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.black12,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 5),
                                            Text('10',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey
                                              ),)
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 12,),
                                            SizedBox(width: 5),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 0,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.black12,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 5),
                                            Text('0',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey
                                              ),)
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {Get.to(ReviewsScreen());},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0XFFF5F5F5),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.photo_camera_rounded, size: 18),
                                              SizedBox(width: 3),
                                              Text('Photos (2)',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),),
                                              SizedBox(width: 20),
                                              Icon(Icons.arrow_forward_ios, size: 18),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: () {Get.to(ReviewsScreen());},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0XFFF5F5F5),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Text('View All (8)',
                                                style: TextStyle(
                                                    fontSize: 15
                                                ),),
                                              SizedBox(width: 20),
                                              Icon(Icons.arrow_forward_ios, size: 18),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Divider(thickness: 1, color: Color(0XFFF5F5F5)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 5, right: 25),
                                child: Row(
                                  children: [
                                    Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 15,),
                                    Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 15,),
                                    Icon(Icons.star_rounded, color: Color(0XFFFACA51), size: 15,),
                                    Icon(Icons.star_half_rounded, color: Color(0XFFFACA51), size: 15,),
                                    Icon(Icons.star_border_rounded, color: Color(0XFFFACA51), size: 15,),
                                    SizedBox(width: 5),
                                    Text('arsalan',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black.withOpacity(0.3),
                                      ),),
                                    Spacer(),
                                    Text('1 week ago',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black.withOpacity(0.3),
                                      ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 10),
                                child: Wrap(
                                  children: [
                                    Text('These shoes are recommended by me, quality is outclass'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 5),
                                child: Row(
                                  children: [
                                    Image.network('https://sg-test-11.slatic.net/other/roc/d8621982b5e329a3c27152d7bdb13610.jpg', width: 80, height: 100,),
                                    Image.network('https://sg-test-11.slatic.net/other/roc/f1a1c5f429f98a0cdbd2a7cd235e9e2e.jpg', width: 80, height: 100,),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(ReviewsScreen());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Column(
                                    children: [
                                      Text('View all (8) >',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Primarycolor,
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: [
                                    Text('Description',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Divider(thickness: 1, color: Color(0XFFF5F5F5)),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                                child: Wrap(
                                  children: [
                                    Text('Sneakers, also known as athletic shoes or trainers, are a type of footwear specifically designed for sports, exercise, and casual wear. Characterized by their comfortable and flexible design, sneakers typically feature rubber soles for enhanced traction and cushioning to provide support during various physical activities. They come in a wide array of styles, colors, and materials, catering to both athletic performance and fashion preferences. From classic canvas sneakers to high-tech performance models with advanced cushioning and support systems, sneakers have become a versatile and iconic wardrobe staple for people of all ages, seamlessly blending functionality with style. Whether on the track, in the gym, or on the streets, sneakers continue to be a popular choice, reflecting the dynamic intersection of sports and fashion in contemporary culture.'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: [
                                    Text('Specifications',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Divider(thickness: 1, color: Color(0XFFF5F5F5)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_right),
                                    Text('Brand: No Brand',
                                    style: TextStyle(
                                    ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_right),
                                    Text('Low-Cut and Comfortable',
                                      style: TextStyle(
                                      ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_right),
                                    Text('3-Stripes On Sides',
                                      style: TextStyle(
                                      ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_right),
                                    Text('Vulcanized Rubber Sole Out Sole for Excellent Grip',
                                      style: TextStyle(
                                      ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_right),
                                    Text('Breathable, Comfortable, Lightweight and Durable',
                                      style: TextStyle(
                                      ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 35, right: 15),
                                child: Row(
                                  children: [
                                    Text('Related Questions (268)',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    Spacer(),
                                    InkWell(
                                      onTap: () {Get.to(RelatedQuestionsScreen());},
                                      child: Text('View all',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Primarycolor,
                                        ),),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Divider(thickness: 1, color: Color(0XFFF5F5F5)),
                              ),
                              ListTile(
                                horizontalTitleGap: 10,
                                minVerticalPadding: 0,
                                minLeadingWidth: 0,
                                visualDensity: VisualDensity(vertical: -3),
                                dense: true,
                                leading: Icon(Icons.chat_bubble, size: 25, color: Colors.red,),
                                title: Text('This is question'),
                                subtitle: Text('Waseem - 1 week ago',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.3),
                                  ),),
                              ),
                              ListTile(
                                horizontalTitleGap: 10,
                                minVerticalPadding: 0,
                                minLeadingWidth: 0,
                                visualDensity: VisualDensity(vertical: -3, horizontal: 0),
                                dense: true,
                                leading: Icon(Icons.chat_bubble, size: 25, color: Colors.green,),
                                title: Text('This is answer'),
                                subtitle: Text('Zahidas LTD - 1 week ago',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.3),
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 5),
                                child: InkWell(
                                  onTap: () {Get.to(RelatedQuestionsScreen());},
                                  child: Column(
                                    children: [
                                      Text('Ask Questions',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Primarycolor,
                                        ),)
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Divider(thickness: 1, color: Color(0XFFF5F5F5)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.keyboard_double_arrow_right, size: 25, color: Primarycolor,),
                                    Text('You May Like',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 25,
                                    ),),
                                    Icon(Icons.keyboard_double_arrow_left_rounded, size: 25, color: Primarycolor,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: MasonryView(
                                    listOfItem:  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
                                    numberOfColumn: 2,
                                    itemPadding: 4,
                                    itemBuilder: (itemBuilder){
                                      return InkWell(
                                        onTap: () {
                                          Get.to(ProductDescription(title: 'mmmm'));
                                        },
                                        child: Card(
                                          margin: EdgeInsets.zero,
                                          surfaceTintColor: Colors.white,
                                          elevation: 0,
                                          child: Column(
                                            children: [
                                              Image.asset('assets/razor.png',
                                                  width: 150, height: 150),
                                              const Padding(
                                                padding: EdgeInsets.only(left: 5,top: 5),
                                                child: Text('Choice Big Paki Disposable Body Razor Specially Made For Male and Female',
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5,top: 5),
                                                child: Row(
                                                  children: [
                                                    const Icon(Icons.star,
                                                        color: Color(0XFFFFCF00),
                                                        size: 15),
                                                    Text('4.1/5 (980)',
                                                      style: TextStyle(
                                                        color: Colors.black.withOpacity(0.5),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Icon(Icons.circle, size: 5, color: Colors.black.withOpacity(0.5)),
                                                    const SizedBox(width: 5),
                                                    Text('7.2K Sold',
                                                      style: TextStyle(
                                                        color: Colors.black.withOpacity(0.5),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Wrap(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 5, top: 5),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(width: 1, color: const Color(0XFF007787)),
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                                                        child: Text('Free Delivery',
                                                          style: TextStyle(
                                                            color: Color(0XFF007787),
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 5),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        border: Border.all(width: 1, color: const Color(0XFFF85E12)),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                                                        child: Text('8 Vouchers',
                                                          style: TextStyle(
                                                            color: Color(0XFFF85E12),
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5,bottom: 5),
                                                child: Row(
                                                  children: [
                                                    const Text('USD 50',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.orange,
                                                      ),),
                                                    const SizedBox(width: 5),
                                                    Text('USD 80',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black.withOpacity(0.5),
                                                        decoration: TextDecoration.lineThrough,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {Get.to(BrandScreen());},
                        child: CircleAvatar(
                          backgroundColor: Primarycolor,
                          child: Image.asset('assets/store.png',
                            fit: BoxFit.contain, width: 25, color: Colors.white,),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: const Text('Added to cart successfully!'),
                              action: SnackBarAction(
                                label: 'View cart',
                                onPressed: () {
                                  Get.to(CartScreen(title: 'title'));
                                },
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Text('Add to Cart',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(2),
                            backgroundColor: MaterialStateProperty.all(Colors.red,),
                            overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.2)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.bottomSheet(
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
                                                  //             labelText: 'Email',
                                                  //             labelStyle: TextStyle(color: Colors.black.withOpacity(0.5))
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
                                                  //             labelText: 'Billing Information',
                                                  //             labelStyle: TextStyle(color: Colors.black.withOpacity(0.5))
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
                                            blurRadius: 3,
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
                                                // Get.back();
                                                // final snackBar = SnackBar(
                                                //  content: const Text('Order placed successfully!'),
                                                //   action: SnackBarAction(
                                                //     label: 'Track order',
                                                //     onPressed: () {
                                                //       Get.to(TrackOrderScreen());
                                                //     },
                                                //   ),
                                                // );
                                                // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                minimumSize: Size(0, 37),
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
                          child: Text('Buy Now',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(2),
                            padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(25, 10, 25, 10)),
                            backgroundColor: MaterialStateProperty.all(Colors.orange),
                            overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.2)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
