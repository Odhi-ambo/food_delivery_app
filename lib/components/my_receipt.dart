import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 25,
      ),
      child: Column(
        children: [
          const Text('Thank you for your order!'),
          Container(
            child: const Text("Receipt Here..."),
          )
        ],
      ),
    );
  }
}
