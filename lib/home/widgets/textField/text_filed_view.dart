import 'package:flutter/material.dart';
import 'package:widgets/home/widgets/textField/text_filed_controller_example.dart';

import '../../widgetsWithProvider/text_filed/text_filed_controller_pro.dart';

class TextFiledView extends StatelessWidget {
  const TextFiledView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //--------------> Text Filed With SetState <--------------//
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TextFiledControllerExample(),
              ),
            );
          },
          child: const Text("TextFiled Controller"),
        ),

        //--------------> Text Filed With Provider <--------------//
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TextFiledControllerProviderView(),
              ),
            );
          },
          child: const Text("TextFiled Controller Provider"),
        ),
      ],
    );
  }
}
