import 'package:flutter/material.dart';

class TextFiledControllerExample extends StatefulWidget {
  // Constructor for the StatefulWidget
  const TextFiledControllerExample({Key? key}) : super(key: key);

  @override
  State<TextFiledControllerExample> createState() =>
      _TextFiledControllerExampleState();
}

class _TextFiledControllerExampleState
    extends State<TextFiledControllerExample> {
  // TextEditingController instance to control the text field
  final txtFiledController = TextEditingController();

  // Variable to hold the input text
  String? input = "Input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Text field widget with controller
          TextField(
            controller: txtFiledController, // Assigning controller to the text field
          ),
          // Button to submit the text input
          ElevatedButton(
            onPressed: () {
              // When the button is pressed, update the 'input' variable with the text from the controller
              input = txtFiledController.text.toString();
              // Call setState to notify Flutter that the state has changed
              setState(() {});
            },
            child: const Text("Submit"),
          ),
          const SizedBox(
            height: 50,
          ),
          // Display the input text
          Text(input!), // 'input' variable is displayed here
        ],
      ),
    );
  }
}
