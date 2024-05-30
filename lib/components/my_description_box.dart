import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);

    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'kshs 50',
                  style: myPrimaryTextStyle,
                ),
                Text(
                  'Delivery Fee',
                  style: mySecondaryTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '10-15 min',
                  style: myPrimaryTextStyle,
                ),
                Text(
                  'Delivery time',
                  style: mySecondaryTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
