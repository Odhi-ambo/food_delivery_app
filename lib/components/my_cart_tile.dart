import 'package:delivery_app/components/my_quantity_selector.dart';
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
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                  const SizedBox(
                    width: 10,
                  ),
                  //NAME AND PRICE

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),

                      //food price
                      Text('kshs ${cartItem.food.price}'),
                    ],
                  ),
                  Spacer(),
                  MyQuantitySelector(
                      food: cartItem.food,
                      onDecrement: () {
                        restaurant.removeFromCart(cartItem);
                      },
                      onIncrement: () {
                        restaurant.addToCart(
                            cartItem.food, cartItem.selectedAddons);
                      },
                      quantity: cartItem.quantity)
                ],
              ),
            ),

            //addons
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cartItem.selectedAddons
                    .map(
                      (addon) => FilterChip(
                        label: Row(
                          children: [
                            //addon name
                            Text(addon.name),

                            //addon price
                            Text(addon.price.toString()),
                          ],
                        ),
                        onSelected: (value) {},
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
