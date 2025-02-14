import 'package:flutter/material.dart';

class PageRoute extends StatefulWidget {
  const PageRoute({super.key});

  @override
  State<PageRoute> createState() => _PageRouteState();
}

class _PageRouteState extends State<PageRoute> {
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
