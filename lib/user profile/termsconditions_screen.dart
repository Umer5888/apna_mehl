import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/config.dart';

class TermsConditionScreen extends StatefulWidget {
  const TermsConditionScreen({super.key});

  @override
  State<TermsConditionScreen> createState() => _TermsConditionScreenState();
}

class _TermsConditionScreenState extends State<TermsConditionScreen> {

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
            child: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
        title: Text('Terms & Conditions',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
      ),
      body: SafeArea(
          child: Column(
            children: [
              for(int i = 0; i < 5; ++i)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('Terms & Conditions'),
              )
            ],
          ),
      ),
    );
  }
}