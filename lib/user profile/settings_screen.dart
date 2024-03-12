import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/helper/deletion.dart';
import 'package:ecommerce/user%20profile/address_screen.dart';
import 'package:ecommerce/user%20profile/help_screen.dart';
import 'package:ecommerce/user%20profile/notificationsettings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/logout.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

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
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white)),
        title: Text('Settings',
        style: TextStyle(
          fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0XFFC8C8C8).withOpacity(0.1),
          child: Column(
            children: [
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.to(AddressScreen());
                },
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                    child: Row(
                      children: [
                        Text('Address Book',
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.to(NotificationsettingsScreen());
                },
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                    child: Row(
                      children: [
                        Text('Notification Settings',
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.to(HelpScreen());
                },
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                    child: Row(
                      children: [
                        Text('Terms & Conditions',
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {Get.to(HelpScreen());},
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                    child: Row(
                      children: [
                        Text('Policies',
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {Get.to(HelpScreen());},
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                    child: Row(
                      children: [
                        Text('Help',
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {deletionDialog(context, screen: SettingsScreen());},
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                    child: Row(
                      children: [
                        Text('Request Account Deletion',
                          style: TextStyle(
                            fontSize: 20
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {logoutDialog(context, screen: SettingsScreen());},
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Log out',
                          style: TextStyle(
                              fontSize: 20,
                            color: Primarycolor,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}