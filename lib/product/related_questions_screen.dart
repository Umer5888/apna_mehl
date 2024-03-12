import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/config.dart';

class RelatedQuestionsScreen extends StatefulWidget {
  const RelatedQuestionsScreen({super.key});

  @override
  State<RelatedQuestionsScreen> createState() => _RelatedQuestionsScreenState();
}

class _RelatedQuestionsScreenState extends State<RelatedQuestionsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        centerTitle: true,
        leadingWidth: 50,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
        title: Text('Related Questions',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
      ),
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
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
                        Divider(thickness: 1, color: Color(0XFFF5F5F5), height: 0,),
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
                        Divider(thickness: 1, color: Color(0XFFF5F5F5), height: 0,),
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
                        Divider(thickness: 1, color: Color(0XFFF5F5F5), height: 0,),
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
                        Divider(thickness: 1, color: Color(0XFFF5F5F5), height: 0,),
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
                        Divider(thickness: 1, color: Color(0XFFF5F5F5), height: 0,),
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
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      children: [
                        SizedBox(width: 5),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                                constraints: BoxConstraints(
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
                                hintText: 'Ask your question',
                                hintStyle: TextStyle(color: Colors.black.withOpacity(0.5))
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Primarycolor,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                            child: Icon(Icons.send, color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}