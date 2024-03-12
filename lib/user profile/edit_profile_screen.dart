import 'package:ecommerce/helper/config.dart';
import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Primarycolor,
        leadingWidth: 40,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white)),
        title: Text('Account Information',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 20),
        //     child: Row(
        //       children: [
        //         Icon(Icons.shopping_cart_outlined, color: Colors.white,),
        //         SizedBox(width: 20),
        //         Icon(Icons.more_horiz, color: Colors.white),
        //       ],
        //     ),
        //   )
        // ],
      ),
      body: SafeArea(
        child: Container(
          color: Color(0XFFC8C8C8).withOpacity(0.1),
          child: Column(
            children: [
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    // context and builder are
                    // required properties in this widget
                    context: context,
                    builder: (BuildContext context) {
                      // we set up a container inside which
                      // we create center column and display text

                      // Returning SizedBox instead of a Container
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Full Name',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),),
                                SizedBox(width: 130),
                                InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                    child: Icon(CupertinoIcons.multiply, size: 20)),
                                SizedBox(width: 20),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        hintText: "Name",
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                      )
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Color(0XFFFA5507)),
                                          ),
                                          child: Text('Save',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Text('Full Name',
                        style: TextStyle(
                          fontSize: 18
                        ),),
                        Spacer(),
                        Text('Name',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.5),
                        ),),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios, color: Colors.black.withOpacity(0.5), size: 18),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    // context and builder are
                    // required properties in this widget
                    context: context,
                    builder: (BuildContext context) {
                      // we set up a container inside which
                      // we create center column and display text

                      // Returning SizedBox instead of a Container
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Password',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),),
                                SizedBox(width: 130),
                                InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Icon(CupertinoIcons.multiply, size: 20)),
                                SizedBox(width: 20),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  FancyPasswordField(),
                                  SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Color(0XFFFA5507)),
                                          ),
                                          child: Text('Save',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Text('Change Password',
                          style: TextStyle(
                              fontSize: 18
                          ),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, color: Colors.black.withOpacity(0.5), size: 18),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    // context and builder are
                    // required properties in this widget
                    context: context,
                    builder: (BuildContext context) {
                      // we set up a container inside which
                      // we create center column and display text

                      // Returning SizedBox instead of a Container
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Mobile Number',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),),
                                SizedBox(width: 130),
                                InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Icon(CupertinoIcons.multiply, size: 20)),
                                SizedBox(width: 20),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        hintText: "+92",
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                      )
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Color(0XFFFA5507)),
                                          ),
                                          child: Text('Save',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Text('Change Mobile',
                          style: TextStyle(
                              fontSize: 18
                          ),),
                        Spacer(),
                        Text('0315XXXXXXX',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios, color: Colors.black.withOpacity(0.5), size: 18),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    // context and builder are
                    // required properties in this widget
                    context: context,
                    builder: (BuildContext context) {
                      // we set up a container inside which
                      // we create center column and display text

                      // Returning SizedBox instead of a Container
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Your Email',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),),
                                SizedBox(width: 130),
                                InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Icon(CupertinoIcons.multiply, size: 20)),
                                SizedBox(width: 20),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        hintText: "Email",
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                      )
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Color(0XFFFA5507)),
                                          ),
                                          child: Text('Save',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Text('Change Email',
                          style: TextStyle(
                              fontSize: 18
                          ),),
                        Spacer(),
                        Text('xyz@gmail.com',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios, color: Colors.black.withOpacity(0.5), size: 18),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    // context and builder are
                    // required properties in this widget
                    context: context,
                    builder: (BuildContext context) {
                      // we set up a container inside which
                      // we create center column and display text

                      // Returning SizedBox instead of a Container
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Gender',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),),
                                SizedBox(width: 130),
                                InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Icon(CupertinoIcons.multiply, size: 20)),
                                SizedBox(width: 20),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                      )
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Color(0XFFFA5507)),
                                          ),
                                          child: Text('Save',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Text('Gender',
                          style: TextStyle(
                              fontSize: 18
                          ),),
                        Spacer(),
                        Text('Not set',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios, color: Colors.black.withOpacity(0.5), size: 18),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    // context and builder are
                    // required properties in this widget
                    context: context,
                    builder: (BuildContext context) {
                      // we set up a container inside which
                      // we create center column and display text

                      // Returning SizedBox instead of a Container
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Your Birthday',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),),
                                SizedBox(width: 130),
                                InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Icon(CupertinoIcons.multiply, size: 20)),
                                SizedBox(width: 20),
                              ],
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        hintText: "DD/MM/YY",
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                      )
                                  ),
                                  SizedBox(height: 30),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Color(0XFFFA5507)),
                                          ),
                                          child: Text('Save',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Text('Birthday',
                          style: TextStyle(
                              fontSize: 18
                          ),),
                        Spacer(),
                        Text('Not set',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.5),
                          ),),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios, color: Colors.black.withOpacity(0.5), size: 18),
                        SizedBox(width: 20),
                      ],
                    ),
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