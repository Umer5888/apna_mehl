import 'package:ecommerce/clients%20screen/gym_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class GymProgramScheduleScreen extends StatefulWidget {
  const GymProgramScheduleScreen({super.key});

  @override
  State<GymProgramScheduleScreen> createState() => _GymProgramScheduleScreenState();
}

class _GymProgramScheduleScreenState extends State<GymProgramScheduleScreen> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 50,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text('Program Schedule',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins'
          ),),
      ),
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Select Program Kick-off Date',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF4781B1),
                            fontFamily: 'Poppins'
                        ),)
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Wrap(
                    children: [
                      Text('Choose when you want to start your workout program and embark on a path to a healthier you',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: TableCalendar(
                    rowHeight: 50,
                    headerStyle:
                    HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        headerPadding: EdgeInsets.symmetric(vertical: 10),
                        titleTextStyle: TextStyle(fontFamily: 'Poppins', color: Color(0XFF0A3B3C), fontSize: 18),
                        leftChevronIcon: Icon(Icons.chevron_left, color: Color(0XFF0A3B3C), size: 30,),
                        rightChevronIcon: Icon(Icons.chevron_right, color: Color(0XFF0A3B3C), size: 30,),
                      ),
                      calendarBuilders: CalendarBuilders(
                      dowBuilder: (context, date) {
                        return Center(
                          child: Text(
                            DateFormat.E('en_US').format(date)[0],
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0XFF4781B1),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }),
                      availableGestures: AvailableGestures.all,
                      focusedDay: today,
                      onDaySelected: _onDaySelected,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                      firstDay: DateTime.utc(2010, 1, 1),
                      lastDay: DateTime.utc(2030, 1, 1)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Your subscription is scheduled to start on',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins'
                      ),),
                      SizedBox(width: 5),
                      Text('June 19th',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                          color: Color(0XFF4781B1)
                        ),),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(GymPaymentScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF4781B1),
                              minimumSize: Size(0, 50),
                            ),
                            child: Text('Confirm',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Poppins'
                              ),)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}