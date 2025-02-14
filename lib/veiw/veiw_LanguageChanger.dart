import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VeiwLanguagechanger extends StatefulWidget {
  const VeiwLanguagechanger({super.key});

  @override
  State<VeiwLanguagechanger> createState() => _VeiwLanguagechangerState();
}

class _VeiwLanguagechangerState extends State<VeiwLanguagechanger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Language Changer', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 200,
            color: Colors.deepPurple[300],
            child: Column(

              children: [
                Text("title".tr, style: TextStyle(fontSize: 20, color: Colors.white),),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text("dec".tr, style: TextStyle(fontSize: 17, color: Colors.white),),
                ),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      Get.updateLocale(Locale('ur'));
                    }, child: Text("Urdu")),
                    ElevatedButton(onPressed: (){
                      Get.updateLocale(Locale('en'));
                    }, child: Text("English")),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
