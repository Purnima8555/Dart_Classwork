import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            for (int i = 1; i <= 10; i++)
              ElevatedButton(
                onPressed: () {
                  // Add your button logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                ),
                child: Text(
                  '$i',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
