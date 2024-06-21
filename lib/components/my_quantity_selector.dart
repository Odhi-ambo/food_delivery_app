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
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          //decrease button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          //quantity count
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Center(
              child: Text(
                quantity.toString(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
