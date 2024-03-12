import 'package:card_swiper/card_swiper.dart';
import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/product/all_products.dart';
import 'package:ecommerce/product/product_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:slide_countdown/slide_countdown.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required String title});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List images = [
    'assets/banner.jpg','assets/banner1.jpg',
  ];

  OutlineInputBorder bbb = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
    borderSide: BorderSide(
      width: 5,
      style: BorderStyle.none,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFC8C8C8).withOpacity(0.1),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              AppBar(
                   surfaceTintColor: Colors.redAccent,
                backgroundColor: Color(0XFFC8C8C8).withOpacity(0.2),
                titleSpacing: 0,
                automaticallyImplyLeading: false,
                
                title: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    color: Colors.transparent,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                      ],
                    ),
                  ),
                ),
                //actions: [
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 7),
                  //   child: InkWell(
                  //     onTap: () {
                  //       Get.to(EditProfileScreen());
                  //     },
                  //     child: ClipRRect(
                  //         borderRadius: BorderRadius.circular(40),
                  //         child: Image.asset('assets/profile.jpg', height: 40, width: 40, fit: BoxFit.cover,)),
                  //   ),
                  // ),
                //],
              ),
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
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: InkWell(
                    onTap: () {
                      Get.to(AllProducts());
                    },
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Primarycolor),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/sneaker.png',
                              width: 40, height: 40),
                              const SizedBox(width: 5),
                              const Text('Sneakers',
                              style: TextStyle(
                                color: Colors.black,
                              ),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Primarycolor),
                              color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/watch.png',
                                  width: 40, height: 40),
                              const SizedBox(width: 5),
                              const Text('Watches',
                              style: TextStyle(
                                color: Colors.black,
                              ),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Primarycolor),
                              color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/jacket.png',
                                  width: 40, height: 40),
                              const SizedBox(width: 5),
                              const Text('Jackets',
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Primarycolor),
                              color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/rings.png',
                                  width: 40, height: 40),
                              const SizedBox(width: 5),
                              const Text('Mens Rings',
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Primarycolor),
                              color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/bata.png',
                                  width: 40, height: 40, fit: BoxFit.cover),
                              const SizedBox(width: 5),
                              const Text('Shoes',
                                style: TextStyle(
                                  color: Colors.black,
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Hot Deals',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.purple,
                                    ),),
                                    Row(
                                      children: [
                                        Container(
                                          height: 78,
                                          color: const Color(0XFFF6F6F6),
                                          child: Image.asset('assets/bata.png',
                                          width: 80, height: 80),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text('\$68',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.purple,
                                                ),),
                                              const Text('\$80',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black45,
                                                  decoration: TextDecoration.lineThrough,
                                                ),),
                                              ElevatedButton(onPressed: () {
                                                  Get.to(AllProducts());
                                              },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: (Colors.purple),
                                                    minimumSize: const Size(25, 25),
                                                  ),
                                                  child: const Text('Shop Now',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),))
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Free Delivery',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                    ),),
                                  Row(
                                    children: [
                                      Container(
                                        height: 78,
                                        color: const Color(0XFFF6F6F6),
                                        child: Image.asset('assets/rings.png',
                                          width: 80, height: 80),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('\$93',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.red,
                                              ),),
                                            const Text('\$105',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black45,
                                                decoration: TextDecoration.lineThrough,
                                              ),),
                                            ElevatedButton(onPressed: () {
                                                Get.to(AllProducts());
                                            },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: (Colors.red),
                                                  minimumSize: const Size(25, 25),
                                                ),
                                                child: const Text('Shop Now',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),))
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 15),
                  child: InkWell(
                    onTap: () {
                      Get.to(AllProducts());
                    },
                    child: Row(
                      children: [
                        ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),child: Image.asset('assets/pic.jpeg',
                            fit: BoxFit.cover, width: 170, height: 170),
                        ),
                        const SizedBox(width: 17),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                          child: Image.asset('assets/pic1.jpeg',
                          width: 100, height: 170, fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 17),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                          child: Image.asset('assets/pic2.jpeg',
                          width: 100, height: 170, fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 15, right: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(AllProducts());
                  },
                  child: Card(
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(CupertinoIcons.tag_fill,
                          size: 35,
                          color: Color(0XFFFA5507)),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Offers only for you',
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),
                              Text('We have selected some product',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, right: 10, top: 15),
                child: Card(
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          minRadius: 15,
                          child: Icon(CupertinoIcons.checkmark_shield,
                              size: 15, color: Color(0XFFFA5507)),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Safe',
                              style: TextStyle(
                                fontSize: 12,
                              ),),
                            Text('payments',
                              style: TextStyle(
                                fontSize: 12,
                              ),),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          minRadius: 15,
                          child: Icon(CupertinoIcons.lock,
                            size: 15, color: Color(0XFFFA5507),),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Protection',
                              style: TextStyle(
                                fontSize: 12,
                              ),),
                            Text('& privacy',
                              style: TextStyle(
                                fontSize: 12,
                              ),),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          minRadius: 15,
                          child: Icon(FontAwesomeIcons.moneyCheckDollar,
                            size: 15, color: Color(0XFFFA5507),),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Buyer',
                            style: TextStyle(
                              fontSize: 12,
                            ),),
                            Text('protection',
                              style: TextStyle(
                                fontSize: 12,
                              ),),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(AllProducts());
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 10, top: 15),
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
                              const SlideCountdownSeparated(
                                  duration: Duration(
                                    hours: 24, minutes: 52, seconds: 60,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0XFFFA5507),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  )
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 12, right: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: InkWell(
                    onTap: (){
                      Get.to(const ProductDescription(title: 'product description',));
                    },
                    child: Row(
                      children: [
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    const Icon(Icons.favorite_border),
                                    SizedBox(
                                      height: 180,
                                      width: MediaQuery.of(context).size.width*0.4,
                                      child: const Icon(Icons.circle,
                                      color: Color(0xFFfde8d7),
                                        size: 120,
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 76,
                                      child: Image.asset('assets/sneaker.png',
                                      width: 180, height: 180),
                                    ),
                                  ],
                                ),
                                const Text('NIKE AIR MAX 200'),
                                const Text('Trending Now'),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$',
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.orange,
                                    ),
                                    ),
                                    SizedBox(width: 5),
                                    Text('240',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    const Icon(Icons.favorite_border),
                                    SizedBox(
                                      height: 180,
                                      width: MediaQuery.of(context).size.width*0.4,
                                      child: const Icon(Icons.circle,
                                        color: Color(0xFFfde8d7),
                                        size: 120,
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 76,
                                      child: Image.asset('assets/sneaker.png',
                                          width: 180, height: 180),
                                    ),
                                  ],
                                ),
                                const Text('ADIDAS MAX PRO'),
                                const Text('Trending Now'),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text('200',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    const Icon(Icons.favorite_border),
                                    SizedBox(
                                      height: 180,
                                      width: MediaQuery.of(context).size.width*0.4,
                                      child: const Icon(Icons.circle,
                                        color: Color(0xFFfde8d7),
                                        size: 120,
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 76,
                                      child: Image.asset('assets/sneaker.png',
                                          width: 180, height: 180),
                                    ),
                                  ],
                                ),
                                const Text('BORJAN PAK STYLE'),
                                const Text('Trending Now'),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text('150',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    const Icon(Icons.favorite_border),
                                    SizedBox(
                                      height: 180,
                                      width: MediaQuery.of(context).size.width*0.4,
                                      child: const Icon(Icons.circle,
                                        color: Color(0xFFfde8d7),
                                        size: 120,
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 76,
                                      child: Image.asset('assets/sneaker.png',
                                          width: 180, height: 180),
                                    ),
                                  ],
                                ),
                                const Text('BATA WINTER SPECIAL'),
                                const Text('Trending Now'),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text('180',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 10, top: 15),
                child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                            colors: [
                                Color(0XFFFFFAD5),
                                Colors.white,
                                        ],
                        )
                             ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
                    child: Column(
                      children: [
                         Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Text('3+ items from',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 5),
                              Text('USD 60',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),),
                              Spacer(),
                              IconButton(onPressed: () {
                                Get.to(AllProducts());
                                }, icon: Icon(Icons.arrow_circle_right, color: Primarycolor),),
                              SizedBox(width: 5),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0XFFFFF5C3),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  child: Row(
                                    children: [
                                      Icon(Icons.check, color: Colors.orangeAccent, size: 14),
                                      Text('Choice',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text('Free shipping',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: InkWell(
                              onTap: () {
                                Get.to(AllProducts());
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5, left: 5),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                            child: Image.asset('assets/wrist.jpg', height: 120, fit: BoxFit.cover)),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(top: 2),
                                                  child: Text('USD',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.redAccent,
                                                  ),),
                                                ),
                                                const Text('60',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.redAccent,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                const SizedBox(width: 5),
                                                Text('USD80',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black.withOpacity(0.5),
                                                    decoration: TextDecoration.lineThrough,
                                                  ),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Text('5000+ orders',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),),
                                                const SizedBox(width: 1),
                                                Icon(Icons.star_rounded, size: 12, color: Colors.black.withOpacity(0.5)),
                                                const SizedBox(width: 1),
                                                const Text('4.7',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5, left: 5),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Image.asset('assets/chairs.jpg', height: 120, fit: BoxFit.cover)),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(top: 2),
                                                  child: Text('USD',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.redAccent,
                                                    ),),
                                                ),
                                                const Text('60',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.redAccent,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                const SizedBox(width: 5),
                                                Text('USD105',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black.withOpacity(0.5),
                                                    decoration: TextDecoration.lineThrough,
                                                  ),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Text('2000+ orders',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),),
                                                const SizedBox(width: 1),
                                                Icon(Icons.star_rounded, size: 12, color: Colors.black.withOpacity(0.5)),
                                                const SizedBox(width: 1),
                                                const Text('4.5',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5, left: 5),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Image.asset('assets/cable.jpg', height: 120, fit: BoxFit.cover)),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(top: 2),
                                                  child: Text('USD',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.redAccent,
                                                    ),),
                                                ),
                                                const Text('60',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.redAccent,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                const SizedBox(width: 5),
                                                Text('USD75',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black.withOpacity(0.5),
                                                    decoration: TextDecoration.lineThrough,
                                                  ),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Text('800+ orders',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),),
                                                const SizedBox(width: 1),
                                                Icon(Icons.star_rounded, size: 12, color: Colors.black.withOpacity(0.5)),
                                                const SizedBox(width: 1),
                                                const Text('4.3',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5, left: 5),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Image.asset('assets/charger.jpg', height: 120, fit: BoxFit.cover)),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(top: 2),
                                                  child: Text('USD',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.redAccent,
                                                    ),),
                                                ),
                                                const Text('60',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.redAccent,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                const SizedBox(width: 5),
                                                Text('USD85',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black.withOpacity(0.5),
                                                    decoration: TextDecoration.lineThrough,
                                                  ),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Text('500+ orders',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),),
                                                const SizedBox(width: 1),
                                                Icon(Icons.star_rounded, size: 12, color: Colors.black.withOpacity(0.5)),
                                                const SizedBox(width: 1),
                                                const Text('4.4',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                  ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 15, right: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(AllProducts());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('50% off on HP laptops',
                                style: TextStyle(
                                  fontSize: 15,
                                ),),
                              Spacer(),
                              Text('Buy now',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.5)
                                ),),
                              SizedBox(width: 2),
                              Icon(Icons.arrow_forward_ios, size: 15, color: Colors.black.withOpacity(0.5)),
                            ],
                          ),
                          Text('20% off on all other laptops',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.5),
                            ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width*0.5,
                          height: 500,
                          child: InkWell(
                            onTap: () {Get.to(ProductDescription(title: 'title'));},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                                      child: Image.network('https://cdn.mos.cms.futurecdn.net/7fhdrdEhVie6e5q4jJHFJS-1200-80.jpeg',
                                          height: 402.5, fit: BoxFit.cover),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topLeft: Radius.circular(10)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Icon(Icons.favorite_border),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Dell i7 11th Gen 2K Display 2.5 GHZ Processor'),
                                      Text('\$300',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Primarycolor,
                                        ),),
                                      Text('\$250',
                                        style: TextStyle(
                                          fontSize: 12,
                                          decoration: TextDecoration.lineThrough,
                                        ),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5 -28,
                          height: 500,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {Get.to(ProductDescription(title: 'title'));},
                                child: Container(
                                  height: 247.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                                            child: Image.network('https://cdn.mos.cms.futurecdn.net/7fhdrdEhVie6e5q4jJHFJS-1200-80.jpeg',
                                                height: 150, fit: BoxFit.cover),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topLeft: Radius.circular(9)),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Icon(Icons.favorite_border),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Dell i7 11th Gen 2K Display 2.5 GHZ Processor'),
                                            Text('\$300',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Primarycolor,
                                              ),),
                                            Text('\$250',
                                              style: TextStyle(
                                                fontSize: 12,
                                                decoration: TextDecoration.lineThrough,
                                              ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              InkWell(
                                onTap: () {Get.to(ProductDescription(title: 'title'));},
                                child: Container(
                                  height: 247.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                                            child: Image.network('https://cdn.mos.cms.futurecdn.net/7fhdrdEhVie6e5q4jJHFJS-1200-80.jpeg',
                                                height: 150, fit: BoxFit.cover),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topLeft: Radius.circular(9)),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Icon(Icons.favorite_border),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Dell i7 11th Gen 2K Display 2.5 GHZ Processor'),
                                            Text('\$300',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Primarycolor,
                                              ),),
                                            Text('\$250',
                                              style: TextStyle(
                                                fontSize: 12,
                                                decoration: TextDecoration.lineThrough,
                                              ),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: InkWell(
                  onTap: () {
                    Get.to(AllProducts());
                  },
                  child: Row(
                    children: [
                      ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),child: Image.asset('assets/ban.jpeg',
                          fit: BoxFit.fill, width: MediaQuery.of(context).size.width*0.65, height: 150),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),child: Image.asset('assets/ban1.jpeg',
                          fit: BoxFit.cover, height: 135),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(AllProducts());
                  },
                  child: Row(
                    children: [
                      ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),child: Image.asset('assets/ban2.jpeg',
                          fit: BoxFit.fill, width: MediaQuery.of(context).size.width*0.65, height: 150),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),child: Image.asset('assets/ban3.jpeg',
                          fit: BoxFit.cover, width: 100, height: 135),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(AllProducts());
                  },
                  child: Row(
                    children: [
                      ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),child: Image.asset('assets/ban4.jpeg',
                          fit: BoxFit.fill, width: MediaQuery.of(context).size.width*0.65, height: 150),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),child: Image.asset('assets/ban5.jpeg',
                          fit: BoxFit.cover, width: 100, height: 135),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.keyboard_double_arrow_right, size: 25, color: Primarycolor,),
                    Text('Only For You',
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
        )
      ),
    );
  }
}
