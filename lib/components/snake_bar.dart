
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void snakeBar(){
   Get.snackbar("Hi, there", "these my order bro",
   snackPosition: SnackPosition.BOTTOM,
     backgroundColor: Colors.deepPurple[300],
     colorText: Colors.white,
     borderRadius: 30,
     icon: Icon(Icons.notifications, color: Colors.white,),
     animationDuration: Duration(seconds: 2),
     dismissDirection : DismissDirection.horizontal,
     forwardAnimationCurve: Curves.bounceInOut,
     margin: EdgeInsets.all(20),
     mainButton: TextButton(onPressed: (){
       Get.back();
     }, child: Text("Close", style: TextStyle(color: Colors.white),)),
   );

}