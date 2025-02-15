import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/conter_controller.dart';

class ViewConter extends StatelessWidget {
  const ViewConter({super.key});

  @override
  Widget build(BuildContext context) {
    ConuterController controller = Get.put(ConuterController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("${controller.conuter}", style: TextStyle(fontSize: 30, color: Colors.deepPurple),)),
             SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    controller.conuter++;
                    print(controller.conuter);

                  }, icon: Icon(Icons.add)),
                  IconButton(onPressed: (){
                    controller.conuter--;
                    print(controller.conuter);
                  }, icon: Icon(Icons.remove)),
                ],
              )
        ],
      )),
    );
  }
}

