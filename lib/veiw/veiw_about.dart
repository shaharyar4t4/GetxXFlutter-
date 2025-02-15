import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leangetx/components/dailogy_box.dart';

import '../controller/simple_controller.dart';

class VeiwAbout extends StatefulWidget {
  const VeiwAbout({super.key});

  @override
  State<VeiwAbout> createState() => _VeiwAboutState();
}

class _VeiwAboutState extends State<VeiwAbout> {
  SimpleController controller = Get.put(SimpleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'About',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name: ",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          Obx(() => Text(
                                "${controller.name.value}",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              )),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Edit Name",
                                content: Column(
                                  spacing: 20,
                                  children: [
                                    TextField(
                                      controller: controller.inputcontrollers,
                                      decoration: InputDecoration(
                                          hintText: "Enter your name"),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        OutlinedButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Text("Cancel")),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              controller.setName();
                                            },
                                            child: Text("Save")),
                                      ],
                                    ),
                                  ],
                                ));
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ))
                    ],
                  ))
            ],
          ),
        )));
  }
}
