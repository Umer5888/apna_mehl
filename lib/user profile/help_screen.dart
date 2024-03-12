import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/config.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        leadingWidth: 50,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white)),
        title: Text('About Us',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Privacy Policy',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width-20,
                child: Column(
                  children: [
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec risus eu lacus semper tempor. Nullam aliquet libero at mi cursus, at rhoncus elit venenatis. Maecenas congue, neque ut fermentum auctor, libero purus dictum metus, eu cursus purus augue non lectus. Vivamus id ligula eget mauris volutpat dictum ac in felis. Praesent vel dapibus dolor. Fusce bibendum libero eget turpis dignissim, ut scelerisque erat tincidunt.')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Terms & Conditions',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width-20,
                child: Column(
                  children: [
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec risus eu lacus semper tempor. Nullam aliquet libero at mi cursus, at rhoncus elit venenatis. Maecenas congue, neque ut fermentum auctor, libero purus dictum metus, eu cursus purus augue non lectus. Vivamus id ligula eget mauris volutpat dictum ac in felis. Praesent vel dapibus dolor. Fusce bibendum libero eget turpis dignissim, ut scelerisque erat tincidunt.')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Help',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width-20,
                child: Column(
                  children: [
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec risus eu lacus semper tempor. Nullam aliquet libero at mi cursus, at rhoncus elit venenatis. Maecenas congue, neque ut fermentum auctor, libero purus dictum metus, eu cursus purus augue non lectus. Vivamus id ligula eget mauris volutpat dictum ac in felis. Praesent vel dapibus dolor. Fusce bibendum libero eget turpis dignissim, ut scelerisque erat tincidunt.')
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}