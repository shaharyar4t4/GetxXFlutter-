import 'package:flutter/material.dart';

class VeiwContact extends StatefulWidget {
  const VeiwContact({super.key});

  @override
  State<VeiwContact> createState() => _VeiwContactState();
}

class _VeiwContactState extends State<VeiwContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact Us', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Contact Us Page", style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
