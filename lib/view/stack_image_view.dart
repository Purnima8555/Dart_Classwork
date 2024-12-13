import 'package:flutter/material.dart';

class StackImageView extends StatelessWidget {
  const StackImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 500,
              color: Colors.lightBlueAccent,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/image1.jpeg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
