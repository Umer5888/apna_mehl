import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/config.dart';

class DepositHistoryScreen extends StatefulWidget {
  const DepositHistoryScreen({super.key});

  @override
  State<DepositHistoryScreen> createState() => _DepositHistoryScreenState();
}

class _DepositHistoryScreenState extends State<DepositHistoryScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Primarycolor,
      //   centerTitle: true,
      //   leadingWidth: 50,
      //   leading: InkWell(
      //       onTap: () {
      //         Get.back();
      //       },
      //       child: Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
      //   title: Text('Transactions History',
      //     style: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         color: Colors.white
      //     ),),
      // ),
      body: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Primarycolor,
            centerTitle: true,
            leadingWidth: 50,
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
            title: Text('Transactions History',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text('Deposits', style: TextStyle(color: Colors.white, fontSize: 15),),
                ),
                Tab(
                  child: Text('Withdrawls', style: TextStyle(color: Colors.white, fontSize: 15),),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(CupertinoIcons.add_circled_solid, size: 30, color: Colors.green,),
                    title: Text('Deposits',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text('12:30AM, 27/2/24',
                    style: TextStyle(
                      color: Colors.black26,
                    ),),
                    trailing: Text('+ \$140',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                    ),),
                  );
                },
              ),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(CupertinoIcons.minus_circle_fill, size: 30, color: Colors.red,),
                    title: Text('Withdrawls',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text('12:30AM, 27/2/24',
                      style: TextStyle(
                        color: Colors.black26,
                      ),),
                    trailing: Text('- \$140',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                      ),),
                  );
                },
              ),
            ],
          ),
        ),
                ),
    );
  }
}