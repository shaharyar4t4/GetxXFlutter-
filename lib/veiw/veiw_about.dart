import 'package:flutter/material.dart';

class VeiwAbout extends StatefulWidget {
  const VeiwAbout({super.key});

  @override
  State<VeiwAbout> createState() => _VeiwAboutState();
}

class _VeiwAboutState extends State<VeiwAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("About Page", style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
