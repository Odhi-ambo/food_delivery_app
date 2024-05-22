import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void Function() onTap;
  final String text;
  MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
