import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Welcome to Getx Demo. This is the first screen.',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
                color: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                onPressed: () {
                  // Get.to(SecondScreen());
                  Get.toNamed("/second");
                },
                child: const Text('Second Screen'))
          ],
        ),
      ),
    );
  }
}
