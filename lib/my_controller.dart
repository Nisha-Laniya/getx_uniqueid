import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;
  void increament () {
    count++;
    update(['Unique id']);
  }
}