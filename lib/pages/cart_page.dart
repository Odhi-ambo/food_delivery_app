import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_cart_tile.dart';
import 'package:delivery_app/model/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;
        //scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Cart')),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear cart
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title:
                          const Text('Are you sure you want clear the cart?'),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        //yes button

                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text('Yes'),
                        )
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text('Cart is Empty..')),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                final cartItem = userCart[index];
                                return MyCartTile(
                                    cartItem:
                                        cartItem); /*ListTile(
                          title: Text(userCart[index].food.name),
                          subtitle: Text(userCart[index].food.price.toString()),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              restaurant.removeFromCart(userCart[index]);*/
                              },
                            ),
                          ),
                  ],
                ),
              ),
              MyButton(onTap: () {}, text: 'GO TO CHECKOUT'),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        );
      },
    );
  }
}
