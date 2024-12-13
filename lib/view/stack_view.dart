import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text('Stack View'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
            child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.amber,
              child: const Text('I am the first container.'),
            ),
            Positioned(
                top: 1,
                right: 1,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: const Text('I am the second container.'),
                )),
            Positioned(
                bottom: 1,
                right: 1,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent,
                  child: const Text('I am the second container.'),
                )),
            const Positioned(
                bottom: -20,
                left: 1,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image1.jpeg'),
                  radius: 100,
                  // height: 100,
                  // width: 100,
                  // color: Colors.blueAccent,
                  // child: const Text('I am the second container.'),
                )),
          ],
        )));
  }
}
