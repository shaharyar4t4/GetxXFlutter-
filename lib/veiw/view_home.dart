import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leangetx/components/bottom_sheet.dart';
import 'package:leangetx/components/snake_bar.dart';

import '../components/dailogy_box.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              snakeBar();
            }, child: Text("Show the Snakebar")),
            ElevatedButton(onPressed: (){
              dailogyBox();
            }, child: Text("Show the Dailogy Box")),
            ElevatedButton(onPressed: (){
              bottomSheet();
            }, child: Text("Show the Bottom Sheet")),

            Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Get.offNamed('/about');
                  // Get.toNamed('/about');
                }, child: Text("about us")),
                ElevatedButton(onPressed: (){
                  Get.toNamed('/contact');
                }, child: Text("contact us")),
              ],
            )
          ],
        ),
      ),

    );
  }
}
