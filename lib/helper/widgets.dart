import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget shortCard(context, {required String title, required IconData icon, required Function()? onPressed}){
  return InkWell(
    onTap: onPressed,
    child: SizedBox(
      width: MediaQuery.of(context).size.width * .25 - 5,
      child: Column(
        children: [
          Icon(icon, size: 30),
          SizedBox(height: 5),
          Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
            ),),
        ],
      ),
    ),
  );
}