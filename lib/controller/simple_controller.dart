import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleController extends GetxController{
  RxString name = "Hello World".obs;
  TextEditingController inputcontrollers = TextEditingController();

  void setName(){
    name.value = inputcontrollers.text;
  }
}