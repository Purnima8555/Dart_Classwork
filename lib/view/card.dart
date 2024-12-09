import 'package:first_assignment_dashboard/core/common/my_card.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 1; i < 10; i++) ...{
                GestureDetector(
                  onTap: () {
                    // print text using common snackbar
                  },
                  child: CardWidget(
                    title: 'Card $i',
                    color: i.isEven ? Colors.blue : Colors.amber,
                  ),
                )
              }
            ],
          ),
        ),
      ),
    );
  }
}

