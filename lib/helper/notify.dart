
import 'package:flutter/material.dart';
import 'package:get/get.dart';

errorNotify(msg){
  Get.snackbar('Error',
    msg,
    colorText: Colors.white,
    backgroundColor: Colors.red,
  );
}

successNotify(msg){
  Get.snackbar('Error',
    msg,
    colorText: Colors.white,
    backgroundColor: Colors.green,
  );
}

infoNotify(msg){
  Get.snackbar('Error',
    msg,
    colorText: Colors.white,
    backgroundColor: Colors.blue,
  );
}

warningNotify(msg){
  Get.snackbar('Error',
    msg,
    colorText: Colors.white,
    backgroundColor: Colors.orange,
  );
}