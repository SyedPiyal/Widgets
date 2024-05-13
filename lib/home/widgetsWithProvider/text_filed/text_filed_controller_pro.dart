import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/home/widgetsWithProvider/text_filed/provider/txt_fld_cntlr_Provider.dart';

class TextFiledControllerProviderView extends StatefulWidget {
  const TextFiledControllerProviderView({super.key});

  @override
  State<TextFiledControllerProviderView> createState() =>
      _TextFiledControllerProviderViewState();
}

class _TextFiledControllerProviderViewState
    extends State<TextFiledControllerProviderView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TextFiledControllerProvider(), // Provide the data model
      child: Scaffold(
        body: Column(
          children: [
            Consumer<TextFiledControllerProvider>(
              builder: (context, inputModel, _) {
                return TextField(
                  onChanged: (value) {
                    inputModel.setTxtResult(
                        value); // Update the input in the data model
                  },
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                // The input can be accessed anywhere using the Provider
                final inputModel = Provider.of<TextFiledControllerProvider>(
                    context,
                    listen: false);
                print(inputModel.txtResult); // You can access the input here
              },
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 50,
            ),
            Consumer<TextFiledControllerProvider>(
              builder: (context, inputModel, _) {
                return Text(inputModel.txtResult); // Display the input text
              },
            ),
          ],
        ),
      ),
    );
  }
}
