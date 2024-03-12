import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/product/search_history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        titleSpacing: 20,
        automaticallyImplyLeading: false,
        title: Text('Categories',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(SearchHistory());
                  },
                    child: Icon(Icons.search, color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        height: MediaQuery.of(context).size.height,
                        color: Color(0XFFF6F6F6),
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 80,
                            crossAxisCount: 1,
                            crossAxisSpacing: 0.0, // Spacing between columns
                            mainAxisSpacing: 0.0,), // Spacing between rows),
                          itemCount: 15,
                          shrinkWrap: false,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: index == 0 ? Colors.white : Colors.transparent,
                                border: Border(left: BorderSide(color: index == 0 ? Primarycolor : Colors.transparent,))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: Column(
                                  children: [
                                    Icon(Icons.personal_injury, color: index == 0 ? Primarycolor : Colors.black),
                                    Text('Just for you',
                                      style: TextStyle(
                                        color: index == 0 ? Primarycolor : Colors.black
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.7,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.white,
                        child: GridView.builder(
                          padding: EdgeInsets.only(top: 10),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, // Number of columns
                            crossAxisSpacing: 0.0, // Spacing between columns
                            mainAxisSpacing: 0.0,), // Spacing between rows),
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Image.network('https://asia-exstatic-vivofs.vivo.com/PSee2l50xoirPK7y/1699615204070/a923ea0d9dc9c164891bada74f533c12.png',
                                  width: 50, height: 50,),
                                Text('Phones'),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}