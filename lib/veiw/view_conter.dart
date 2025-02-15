import 'package:flutter/material.dart';

class ViewConter extends StatelessWidget {
  const ViewConter({super.key});

  @override
  Widget build(BuildContext context) {
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
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.deepPurple,
          )
        ],
      )),
    );
  }
}
