import 'package:delivery_app/model/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      //cart
      final userCart = restaurant.cart;
      //scaffold UI
      return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
        ),
        body: ListView.builder(
          itemCount: userCart.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(userCart[index].food.name),
              subtitle: Text(userCart[index].food.price.toString()),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  restaurant.removeFromCart(userCart[index]);
                },
              ),
            );
          },
        ),
      );
    });
  }
}
