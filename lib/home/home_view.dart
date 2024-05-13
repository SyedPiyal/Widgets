import 'package:flutter/material.dart';
import 'package:widgets/home/widgets/textField/text_filed_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Of Widgets"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextFiledView(),
                ),
              );
            },
            child: const Text("TextFiled"),
          ),
        ],
      ),
    );
  }
}
