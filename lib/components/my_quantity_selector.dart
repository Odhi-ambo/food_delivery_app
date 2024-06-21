import 'package:delivery_app/model/food.dart';
import 'package:flutter/material.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const MyQuantitySelector(
      {super.key,
      required this.food,
      required this.onDecrement,
      required this.onIncrement,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
