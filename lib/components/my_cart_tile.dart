import 'package:delivery_app/model/cart_item.dart';
import 'package:delivery_app/model/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        child: Column(
          children: [
            Row(
              children: [
                //FOOD IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 130,
                    width: 130,
                  ),
                ),
                //NAME AND PRICE

                Column(
                  children: [
                    Text(cartItem.food.name),
                    Text('kshs ' + cartItem.food.price.toString())
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
