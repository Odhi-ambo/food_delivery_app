import 'package:delivery_app/components/my_receipt.dart';
import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Delivery in progress')),
        backgroundColor: Colors.transparent,
      ),
      body: const Column(
        children: [MyReceipt()],
      ),
    );
  }
}
