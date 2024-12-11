import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final _textController = TextEditingController();
  List<String> lstSymbols = [
    "C",
    "*",
    "/",
    "<-",
    "1",
    "2",
    "3",
    "+",
    "4",
    "5",
    "6",
    "-",
    "7",
    "8",
    "9",
    "*",
    "%",
    "0",
    ".",
    "="
  ];

  String currentInput = "";
  String operation = "";
  double? firstOperand;

  void _handleInput(String symbol) {
    setState(() {
      if (symbol == "C") {
        _textController.text = "";
        currentInput = "";
        firstOperand = null;
        operation = "";
      } else if (symbol == "<-") {
        if (currentInput.isNotEmpty) {
          currentInput = currentInput.substring(0, currentInput.length - 1);
          _textController.text = currentInput;
        }
      } else if (symbol == "=") {
        if (firstOperand != null &&
            operation.isNotEmpty &&
            currentInput.isNotEmpty) {
          double secondOperand = double.parse(currentInput);
          double result = 0;
          switch (operation) {
            case "+":
              result = firstOperand! + secondOperand;
              break;
            case "-":
              result = firstOperand! - secondOperand;
              break;
            case "*":
              result = firstOperand! * secondOperand;
              break;
            case "/":
              result = secondOperand != 0 ? firstOperand! / secondOperand : 0;
              break;
            case "%":
              result = firstOperand! % secondOperand;
              break;
          }
          _textController.text = result.toString();
          currentInput = result.toString();
          firstOperand = null;
          operation = "";
        }
      } else if (["+", "-", "*", "/", "%"].contains(symbol)) {
        if (currentInput.isNotEmpty) {
          firstOperand = double.parse(currentInput);
          operation = symbol;
          currentInput = "";
          _textController.text = symbol;
        }
      } else {
        currentInput += symbol;
        _textController.text = currentInput;
      }
    });
  }

  Color _getButtonColor(String symbol) {
    if (symbol == "C") {
      return Color.fromARGB(234, 255, 128, 0); // Orange for C
    } else if (["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
        .contains(symbol)) {
      return const Color.fromARGB(84, 158, 158, 158); // Grey for numbers
    } else {
      return Colors.amberAccent; // Amber accent for all others
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                readOnly: true,
                textDirection: TextDirection.rtl,
                controller: _textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: lstSymbols.length,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _getButtonColor(lstSymbols[index]),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        _handleInput(lstSymbols[index]);
                      },
                      child: Text(
                        lstSymbols[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
