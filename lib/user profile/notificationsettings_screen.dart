import 'package:ecommerce/helper/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';

class NotificationsettingsScreen extends StatefulWidget {
  const NotificationsettingsScreen({super.key});

  @override
  State<NotificationsettingsScreen> createState() => _NotificationsettingsScreenState();

}
// ...
// 1. Create a controller in the state of the StatefulWidget
final _controller = ValueNotifier<bool>(false);
bool _checked = false;
class _NotificationsettingsScreenState extends State<NotificationsettingsScreen> {

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        var _controller00;
        if (_controller00.value) {
          _checked = true;
        } else {
          _checked = false;
        }
      });
    });
  }
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
        title: Text('Message Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
              color: Colors.white,
          ),),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0XFFC8C8C8).withOpacity(0.1),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('All Push Notifications',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                          Text('Manage All Your Push Notifications',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),),
                        ],
                      ),
                      Spacer(),
                      AdvancedSwitch(
                        controller: _controller,
                        activeColor: Primarycolor,
                      ),
                    ],
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