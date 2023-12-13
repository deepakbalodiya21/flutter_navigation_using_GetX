import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homeScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Welcome to Getx Demo. This is the second screen.',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
                color: Colors.lightGreen,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                onPressed: () {
                  // Get.to(MyHomePage());
                  Get.offAllNamed("/");
                },
                child: Text('Home Screen'))
          ],
        ),
      ),
    );
  }
}
