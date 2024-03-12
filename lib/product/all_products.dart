import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/product/product_description.dart';
import 'package:ecommerce/product/search_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:get/get.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  OutlineInputBorder bbb = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
    borderSide: BorderSide(
      width: 0,
      style: BorderStyle.none,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
            child: Icon(Icons.arrow_back_ios_new)),
        title: Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            color: Colors.transparent,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                     onTap: () {
                       Get.to(SearchHistory());
                   },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
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
                SizedBox(width: 20),
                // Expanded(
                //   child: TextFormField(
                //     onTap: () {
                //         Get.to(SearchHistory());
                //     },
                //     readOnly: true,
                //     decoration: InputDecoration(
                //       contentPadding: const EdgeInsets.only(top: 5),
                //       border: bbb,
                //       focusedBorder: bbb,
                //       enabledBorder: const OutlineInputBorder(
                //         borderRadius: BorderRadius.all(
                //           Radius.circular(15.0),
                //         ),
                //         borderSide: BorderSide(
                //           width: 0,
                //           style: BorderStyle.none,
                //         ),
                //       ),
                //       errorBorder: InputBorder.none,
                //       disabledBorder: InputBorder.none,
                //       filled: true,
                //       fillColor:  const Color(0xFFF6F6F6),
                //       prefixIcon: const Icon(Icons.search),
                //       hintText: 'Search Products',
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0XFFC8C8C8).withOpacity(0.2),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.arrow_down, size: 15),
                          Text('Best Match'),
                          SizedBox(width: 15),
                          Icon(CupertinoIcons.arrow_down, size: 15),
                          Text('Top sales'),
                          SizedBox(width: 15),
                          Icon(CupertinoIcons.arrow_up_down, size: 15),
                          Text('Price'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20, bottom: 15),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Text('Choice'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Text('Plus'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Text('Free shipping'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Text('Featured'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text('Flash Sale',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        Text('Get \'em before they\'re gone!',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black.withOpacity(0.5),
                                          ),),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(width: 1, color: Primarycolor,)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5, right: 5),
                                        child: Text('View all',
                                        style: TextStyle(
                                          color: Primarycolor,
                                        ),),
                                      ),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Image.asset('assets/headphone.jpg',
                                                        height: 120, fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                  const Row(
                                                    children: [
                                                      Text('\$',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0XFFFA5507),
                                                        ),),
                                                      SizedBox(width: 1),
                                                      Text('205',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0XFFFA5507),
                                                        ),),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('\$310',
                                                        style: TextStyle(
                                                          decoration: TextDecoration.lineThrough,
                                                          fontSize: 12,
                                                          color: Colors.black.withOpacity(0.5),
                                                        ),),
                                                      const SizedBox(width: 5),
                                                      Container(
                                                        padding: const EdgeInsets.only(left: 3, right: 3),
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.rectangle,
                                                          color: const Color(0XFFFA5507).withOpacity(0.1),
                                                        ),
                                                        child: const Text('-86%',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(0XFFFA5507),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      RoundedProgressBar(
                                                        theme: RoundedProgressBarTheme.yellow,
                                                        margin: const EdgeInsets.symmetric(vertical: 8),
                                                        borderRadius: BorderRadius.circular(15),
                                                        percent: 100,
                                                        height: 18,
                                                        childCenter: const Padding(
                                                          padding: EdgeInsets.only(left: 9),
                                                          child: Text('Sold out',
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 12,
                                                            ),),
                                                        ),
                                                      ),
                                                      const Positioned(
                                                        left: 0, right: 98, top: 0, bottom: 0,
                                                        child: Icon(CupertinoIcons.flame_fill,
                                                          size: 23, color: Color(0XFFFA5507),),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Image.asset('assets/phone.jpg',
                                                        height: 120, fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                  const Row(
                                                    children: [
                                                      Text('\$',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0XFFFA5507),
                                                        ),),
                                                      SizedBox(width: 1),
                                                      Text('560',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0XFFFA5507),
                                                        ),),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('\$850',
                                                        style: TextStyle(
                                                          decoration: TextDecoration.lineThrough,
                                                          fontSize: 12,
                                                          color: Colors.black.withOpacity(0.5),
                                                        ),),
                                                      const SizedBox(width: 5),
                                                      Container(
                                                        padding: const EdgeInsets.only(left: 3, right: 3),
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.rectangle,
                                                          color: const Color(0XFFFA5507).withOpacity(0.1),
                                                        ),
                                                        child: const Text('-26%',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(0XFFFA5507),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      RoundedProgressBar(
                                                        theme: RoundedProgressBarTheme.yellow,
                                                        margin: const EdgeInsets.symmetric(vertical: 8),
                                                        borderRadius: BorderRadius.circular(15),
                                                        percent: 50,
                                                        height: 18,
                                                      ),
                                                      const Positioned(
                                                        left: 15, right: 0, top: 14.5, bottom: 0,
                                                        child: Text('16 Sold',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.white,
                                                          ),),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Image.asset('assets/airpods.jpg',
                                                        height: 120, fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                  const Row(
                                                    children: [
                                                      Text('\$',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0XFFFA5507),
                                                        ),),
                                                      SizedBox(width: 1),
                                                      Text('200',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0XFFFA5507),
                                                        ),),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('\$250',
                                                        style: TextStyle(
                                                          decoration: TextDecoration.lineThrough,
                                                          fontSize: 12,
                                                          color: Colors.black.withOpacity(0.5),
                                                        ),),
                                                      const SizedBox(width: 5),
                                                      Container(
                                                        padding: const EdgeInsets.only(left: 3, right: 3),
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.rectangle,
                                                          color: const Color(0XFFFA5507).withOpacity(0.1),
                                                        ),
                                                        child: const Text('-17%',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(0XFFFA5507),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      RoundedProgressBar(
                                                        theme: RoundedProgressBarTheme.yellow,
                                                        margin: const EdgeInsets.symmetric(vertical: 8),
                                                        borderRadius: BorderRadius.circular(15),
                                                        percent: 80,
                                                        height: 18,
                                                      ),
                                                      const Positioned(
                                                        left: 15, right: 0, top: 14.5, bottom: 0,
                                                        child: Text('88 Sold',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.white,
                                                          ),),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Image.asset('assets/bata.png',
                                                        height: 120, fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                  const Row(
                                                    children: [
                                                      Text('\$',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0XFFFA5507),
                                                        ),),
                                                      SizedBox(width: 1),
                                                      Text('350',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0XFFFA5507),
                                                        ),),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('\$380',
                                                        style: TextStyle(
                                                          decoration: TextDecoration.lineThrough,
                                                          fontSize: 12,
                                                          color: Colors.black.withOpacity(0.5),
                                                        ),),
                                                      const SizedBox(width: 5),
                                                      Container(
                                                        padding: const EdgeInsets.only(left: 3, right: 3),
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.rectangle,
                                                          color: const Color(0XFFFA5507).withOpacity(0.1),
                                                        ),
                                                        child: const Text('-20%',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Color(0XFFFA5507),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      RoundedProgressBar(
                                                        theme: RoundedProgressBarTheme.yellow,
                                                        margin: const EdgeInsets.symmetric(vertical: 8),
                                                        borderRadius: BorderRadius.circular(15),
                                                        percent: 60,
                                                        height: 18,
                                                      ),
                                                      const Positioned(
                                                        left: 15, right: 0, top: 14.5, bottom: 0,
                                                        child: Text('35 Sold',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.white,
                                                          ),),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}