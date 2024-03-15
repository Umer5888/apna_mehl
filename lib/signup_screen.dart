import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/provider/auth_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text('Home'),
      // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<AuthProvider>(
              builder: (context, provider, _) {
                return Column(
                  children: [
                    Spacer(),
                    Text('Create an account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        )),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                        hintText: 'Name',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.0),
                        ),
                      ),
                      onChanged: (String nam){
                        provider.setName(nam);
                      },
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      onChanged: (String val){
                        provider.setEmail(val);
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                        hintText: 'Email',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      onChanged: (String mobile_number){
                        provider.setPhone(mobile_number);
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                        hintText: 'Mobile Number',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      // obscureText: true,
                      onChanged: (String value) {
                        provider.setPassword(value);
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade500, width: 1.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_box_outline_blank_sharp,color: Primarycolor,),
                        SizedBox(width: 3,),
                        Text('I Agree with',),
                        SizedBox(width: 3,),
                        Text('Terms and condition',
                          style: TextStyle(
                              color: Primarycolor,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Primarycolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            // side: BorderSide(color: Colors.green,)
                          ),
                          onPressed: (){
                            provider.callSignupApi();
                          },
                          child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                            ),)),
                    ),
                    // SizedBox(height: 10,),
                  ],
                );
              }
            ),
          ),
        )
    );
  }
}