import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/config.dart';

class BrandScreen extends StatefulWidget {
  const BrandScreen({super.key});

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 40,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        title: Expanded(
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
              hintText: 'Search in Store', hintStyle: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
            color: Color(0XFFC8C8C8).withOpacity(0.1),
            child: Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text('LATEST ADDITIONS',
                      style: TextStyle(
                        fontSize: 15,
                      ),),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                  fit: BoxFit.cover, height: 112,),
                                  Container(
                                      width: MediaQuery.of(context).size.width*0.3,
                                      child: Text('SpongeSpongeSpongeSpongeSpongeSpongeSponge')),
                                  Text('\$ 15',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Primarycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text('\$ 25',
                                      style: TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.black.withOpacity(0.5),
                                      ),),
                                      SizedBox(width: 5),
                                      Text('-15%',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // IntrinsicHeight(child: VerticalDivider(color: Colors.black, width: 1,)),
                            Container(
                              width: MediaQuery.of(context).size.width*0.6 -10,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                      fit: BoxFit.cover, height: 60,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 200 -65,
                                              child: Text('SpongeSpongeSpongeSpongeSponge',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text('\$ 15',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Primarycolor,
                                            ),),
                                            SizedBox(height: 2),
                                            Row(
                                              children: [
                                                Text('\$ 25',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.black.withOpacity(0.5),
                                                  ),),
                                                SizedBox(width: 5),
                                                Text('-15%',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                        fit: BoxFit.cover, height: 60,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 200 -65,
                                              child: Text('SpongeSpongeSpongeSpongeSponge',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text('\$ 15',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Primarycolor,
                                              ),),
                                            SizedBox(height: 2),
                                            Row(
                                              children: [
                                                Text('\$ 25',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.black.withOpacity(0.5),
                                                  ),),
                                                SizedBox(width: 5),
                                                Text('-15%',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                        fit: BoxFit.cover, height: 60,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 200 -65,
                                              child: Text('SpongeSpongeSpongeSpongeSponge',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text('\$ 15',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Primarycolor,
                                              ),),
                                            SizedBox(height: 2),
                                            Row(
                                              children: [
                                                Text('\$ 25',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.black.withOpacity(0.5),
                                                  ),),
                                                SizedBox(width: 5),
                                                Text('-15%',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 10),
                      child: Text('HOT DEALS',
                        style: TextStyle(
                          fontSize: 15,
                        ),),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                        fit: BoxFit.cover, height: 100,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Text('\$ 15',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Primarycolor,
                                        ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        children: [
                                          Text('\$ 25',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black.withOpacity(0.5),
                                                decoration: TextDecoration.lineThrough
                                            ),),
                                          SizedBox(width: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Primarycolor,
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 5),
                                              child: Text('-25%',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(width: 10),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                        fit: BoxFit.cover, height: 100,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Text('\$ 15',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Primarycolor,
                                        ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        children: [
                                          Text('\$ 25',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black.withOpacity(0.5),
                                                decoration: TextDecoration.lineThrough
                                            ),),
                                          SizedBox(width: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Primarycolor,
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 5),
                                              child: Text('-25%',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(width: 10),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                        fit: BoxFit.cover, height: 100,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Text('\$ 15',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Primarycolor,
                                        ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        children: [
                                          Text('\$ 25',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black.withOpacity(0.5),
                                                decoration: TextDecoration.lineThrough
                                            ),),
                                          SizedBox(width: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Primarycolor,
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 5),
                                              child: Text('-25%',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(width: 10),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                        fit: BoxFit.cover, height: 100,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Text('\$ 15',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Primarycolor,
                                        ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        children: [
                                          Text('\$ 25',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black.withOpacity(0.5),
                                                decoration: TextDecoration.lineThrough
                                            ),),
                                          SizedBox(width: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Primarycolor,
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 5),
                                              child: Text('-25%',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(width: 10),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                        fit: BoxFit.cover, height: 100,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Text('\$ 15',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Primarycolor,
                                        ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Row(
                                        children: [
                                          Text('\$ 25',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black.withOpacity(0.5),
                                                decoration: TextDecoration.lineThrough
                                            ),),
                                          SizedBox(width: 10),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Primarycolor,
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 5),
                                              child: Text('-25%',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 10),
                      child: Text('MAIN CATEGORIES',
                        style: TextStyle(
                          fontSize: 15,
                        ),),
                    ),
                    SizedBox(height: 10),
                    Container(
                      color: Colors.white,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Column(
                              children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                 fit: BoxFit.cover, height: 80,),
                              ),
                                SizedBox(height: 5),
                                SizedBox(width: 60,
                                  child: Text('All Products',
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 70,
                                    child: Text('Kitchen & Dinning'),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 70,
                                  child: Text('Kitchen & Dinning'),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 70,
                                  child: Text('Kitchen & Dinning'),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 70,
                                  child: Text('Kitchen & Dinning'),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 10),
                      child: Text('MAIN CATEGORIES',
                        style: TextStyle(
                          fontSize: 15,
                        ),),
                    ),
                    SizedBox(height: 10),
                    Container(
                      color: Colors.white,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 60,
                                  child: Text('All Products',
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 70,
                                  child: Text('Kitchen & Dinning'),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 70,
                                  child: Text('Kitchen & Dinning'),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 70,
                                  child: Text('Kitchen & Dinning'),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network('https://supplies.com.ph/wp-content/uploads/2022/10/sponge1-scaled.jpeg?61wnp3uvqyckeotljbh',
                                    fit: BoxFit.cover, height: 80,),
                                ),
                                SizedBox(height: 5),
                                SizedBox(width: 70,
                                  child: Text('Kitchen & Dinning'),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}