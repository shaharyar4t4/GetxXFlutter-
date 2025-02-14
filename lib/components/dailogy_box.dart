import 'package:flutter/material.dart';
import 'package:get/get.dart';

void dailogyBox() {
  Get.defaultDialog(
      title: "Hi there",
      middleText: "this is Shaharyar",
      content: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your name",
              labelText: "Name",
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      titleStyle: TextStyle(color: Colors.deepPurple),
      actions: [
        TextButton(onPressed: (){
          Get.back();
        }, child: Text("Close")),
        TextButton(onPressed: (){
          Get.back();
        }, child: Text("Save"))
      ],
      radius: 10,
     titlePadding: EdgeInsets.all(10),
  );


}
