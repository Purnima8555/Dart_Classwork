import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String displayText = "";

  void onButtonPressed(String value) {
    setState(() {
      if (value == "C") {
        displayText = "";
      } else if (value == "=") {
        try {
          displayText = _evaluateExpression(displayText);
        } catch (e) {
          displayText = "Error";
        }
      } else {
        displayText += value;
      }
    });
  }

  String _evaluateExpression(String expression) {
    try {
      expression = expression.replaceAll('×', '*').replaceAll('÷', '/');

      // Use MathExpressions library to parse and evaluate
      Parser parser = Parser();
      Expression exp = parser.parse(expression);
      ContextModel cm = ContextModel();

      double result = exp.evaluate(EvaluationType.REAL, cm);
      return result.toStringAsFixed(2).replaceAll(".00", ""); // Clean format
    } catch (e) {
      return "Error";
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
      "7",
      "8",
      "9",
      "÷",
      "4",
      "5",
      "6",
      "×",
      "1",
      "2",
      "3",
      "-",
      "C",
      "0",
      "=",
      "+"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(20),
              child: Text(
                displayText,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () => onButtonPressed(buttons[index]),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _getButtonColor(buttons[index]),
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      buttons[index],
                      style: const TextStyle(fontSize: 25),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getButtonColor(String button) {
    if (["÷", "×", "-", "+", "="].contains(button)) {
      return Colors.orange;
    } else if (button == "C") {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }
}
