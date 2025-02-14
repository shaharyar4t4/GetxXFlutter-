
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void bottomSheet(){
  Get.bottomSheet(
    Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        spacing: 15,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Bottom Sheet", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
          ),
          Row(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: (){
                Get.back();
              }, child: Text("cancel")),
              ElevatedButton(onPressed: (){}, child: Text("Save"))
            ],
          )
        ],
      ),
    )
  );
}