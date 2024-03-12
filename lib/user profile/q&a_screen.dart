import 'package:ecommerce/helper/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helper/configure.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: InkWell(
          onTap: () {Get.back();},
            child: Icon(Icons.arrow_back_ios, color: Colors.white)),
        title: Text('Queries',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),),
      ),
      body: SafeArea(
          child: Container(
            color: Color(0XFFC8C8C8).withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Top Questions',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Primarycolor,
                                ),),
                            ],
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 15,),
                                        Text(
                                          "Answer",
                                          style: TextStyle(
                                              color: Primarycolor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 15,),
                                            Text(
                                              "You can track your order by following these steps:",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(height: 3,),
                                            Text(
                                              "1: Tap on Profile",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              "2: In \'My Orders\', tap \'view all\'",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              "3: Now click the order you placed",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Text('How do I track my order?',
                                style: TextStyle(
                                  fontSize: 15,
                                ),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          ),
                          Divider(height: 20, color: Colors.black.withOpacity(0.1),),
                          InkWell(
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 15,),
                                        Text(
                                          "Answer",
                                          style: TextStyle(
                                              color: Primarycolor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 15,),
                                            Text(
                                              "Delivery time is shown while you order the item",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Text('What are the expected delivery timelines?',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          ),
                          Divider(height: 20, color: Colors.black.withOpacity(0.1),),
                          InkWell(
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 15,),
                                        Text(
                                          "Answer",
                                          style: TextStyle(
                                              color: Primarycolor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 15,),
                                            Text(
                                              "In \'My Orders\', Just click on \'cancel order\'",
                                              style: TextStyle(
                                                color: nonColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Text('How to cancel the order?',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Still Need Help?',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Primarycolor,
                                ),),
                            ],
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: () {
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              minLeadingWidth: 0,
                              minVerticalPadding: 5,
                              horizontalTitleGap: 10,
                              leading: Column(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 20,
                                    backgroundColor: Primarycolor,
                                      child: Icon(Icons.headset_mic_outlined, color: Colors.white, size: 20,)
                                  ),
                                ],
                              ),
                              title: Text('Chat with us'),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Our Virtual Assistant:24/7',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),),
                                  Text('Live Chat: 24/7(Mon-Sun)',
                                    style: TextStyle(
                                        fontSize: 12
                                    ),),
                                ],
                              ),
                              trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            ),
                          ),
                          Divider(height: 10, color: Colors.black.withOpacity(0.1),),
                          ListTile(
                            onTap: () async {
                              // , mode: LaunchMode.externalApplication
                              if (!await launchUrl(Uri.parse("tel://00540222"))) {
                                throw Exception('Could not launch');
                              }
                            },
                            contentPadding: EdgeInsets.zero,
                            minLeadingWidth: 0,
                            minVerticalPadding: 5,
                            horizontalTitleGap: 10,
                            leading: CircleAvatar(
                                maxRadius: 20,
                                backgroundColor: Primarycolor,
                                child: Icon(Icons.phone, color: Colors.white, size: 20,)
                            ),
                            title: Text('Call us'),
                            subtitle: Text('9am - 9pm (Mon-Sat)',
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                          ),
                          Divider(height: 10, color: Colors.black.withOpacity(0.1),),
                          ListTile(
                            onTap: () async {
                              // , mode: LaunchMode.externalApplication
                              if (!await launchUrl(Uri.parse("mailto:admin@gmail.com"))) {
                                throw Exception('Could not launch');
                              }
                            },
                            contentPadding: EdgeInsets.zero,
                            minLeadingWidth: 0,
                            minVerticalPadding: 5,
                            horizontalTitleGap: 10,
                            leading: CircleAvatar(
                                maxRadius: 20,
                                backgroundColor: Primarycolor,
                                child: Icon(Icons.headset_mic_outlined, color: Colors.white, size: 20,)
                            ),
                            title: Text('Email us'),
                            subtitle: Text('Response time: Within 24 to 48 hours',
                              style: TextStyle(
                                  fontSize: 12
                              ),),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}