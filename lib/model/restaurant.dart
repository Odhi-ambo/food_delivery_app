import 'package:collection/collection.dart';
import 'package:delivery_app/model/cart_item.dart';
import 'package:delivery_app/model/food.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> menu = [
    //dishi
    Food(
      name: 'Mandazi surwa',
      description: 'Mandazi imekatanishwa na utamu',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.dishi,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'Chapo dondo',
      description: 'none like chapo madondo',
      imagePath: 'lib/images/dishi/download (5).jfif',
      price: 100,
      category: FoodCategory.dishi,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'Burger king',
      description: 'burger as delicious as you.',
      imagePath: 'lib/images/dishi/download (1).jfif',
      price: 150,
      category: FoodCategory.dishi,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'burger',
      description: 'MSG smash burger',
      imagePath:
          'lib/images/dishi/MSG-Smash-Burger-FT-RECIPE0124-d9682401f3554ef683e24311abdf342b.jpg',
      price: 100,
      category: FoodCategory.dishi,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'Chapo vurugu',
      description: 'chapo mutura smokie firiri',
      imagePath: 'lib/images/dishi/images (2).jfif',
      price: 100,
      category: FoodCategory.dishi,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    //salads
    Food(
      name: 'tam tam',
      description: 'vitu tamu tamu kama wewe',
      imagePath: 'lib/images/salads/download (1).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'House delicacy',
      description: 'You' 'll love it',
      imagePath: 'lib/images/salads/download (2).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'real deal',
      description: 'Soo sweet!',
      imagePath: 'lib/images/salads/download (3).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'pure sweetness',
      description: 'The usual sweet',
      imagePath: 'lib/images/salads/download (4).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'pure greatness',
      description: 'African delicacy',
      imagePath: 'lib/images/salads/download.jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),

    //sides
    Food(
      name: 'kapolite',
      description: 'You' 'll want more',
      imagePath: 'lib/images/sides/download (3).jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'eazy peazy',
      description: 'One for the road',
      imagePath: 'lib/images/sides/download.jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'wacha uchekwe',
      description: 'Utapenda ya kipwani',
      imagePath: 'lib/images/sides/images (1).jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'deal breaker',
      description: 'If not this, what else!',
      imagePath: 'lib/images/sides/images (2).jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'vile inafaa',
      description: 'lemme have another one',
      imagePath: 'lib/images/sides/images.jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),

    //desserts
    Food(
      name: 'cake',
      description: 'So sweet and yummy',
      imagePath: 'lib/images/desserts/download (1).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'marble',
      description: 'Comes with nice taste',
      imagePath: 'lib/images/desserts/download (2).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'vanilla cream',
      description: 'who doesnt love vanilla',
      imagePath: 'lib/images/desserts/download (3).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'strawbeery toppings',
      description: 'The best topping in town',
      imagePath: 'lib/images/desserts/download (4).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),
    Food(
      name: 'mouth watering',
      description: 'You definitely gonna want more',
      imagePath: 'lib/images/desserts/download.jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10),
        Addon(name: 'Firiri', price: 10),
      ],
    ),

    //drinks
    Food(
      name: 'Fanta Black',
      description: 'Cold nice fanta blackarrent',
      imagePath: 'lib/images/drinks/download (1).jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Water', price: 20),
        Addon(name: 'Ice', price: 10),
        Addon(name: 'Soda', price: 10),
      ],
    ),
    Food(
      name: 'Makali',
      description: 'Makali ziko best sio za mtaa',
      imagePath: 'lib/images/drinks/download (2).jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Water', price: 20),
        Addon(name: 'Ice', price: 10),
        Addon(name: 'Soda', price: 10),
      ],
    ),
    Food(
      name: 'softdrinks',
      description: 'different cocktails',
      imagePath: 'lib/images/drinks/download (5).jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Water', price: 20),
        Addon(name: 'Ice', price: 10),
        Addon(name: 'Soda', price: 10),
      ],
    ),
    Food(
      name: 'juice',
      description: 'Every taste we got you',
      imagePath: 'lib/images/drinks/download.jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Water', price: 20),
        Addon(name: 'Ice', price: 10),
        Addon(name: 'Soda', price: 10),
      ],
    ),
    Food(
      name: 'Thirst Quenching',
      description: 'So cold youll love it',
      imagePath: 'lib/images/drinks/images.jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Water', price: 20),
        Addon(name: 'Ice', price: 10),
        Addon(name: 'Soda', price: 10),
      ],
    ),
  ];

  //getters
  //List<Food> get menu => _menu;

  //OPERATIONS
//user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;

    }
    );

    if (cartItem != null){
      cartItem.quantity**;
    }

    else{
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons,),
      );
    }
    notifyListeners();
    }
  //remove from cart
void removeFromCart(CartItem cartItem){
  int cartIndex = _cart.indexOf(cartItem);

  if (cartIndex != -1){
    _cart[cartIndex].quantity--;
  }else
  _cart.removeAt(cartIndex);
}

  //get total price ofL cart
  //get total number of items in cart
  //clear cart

  //helpers:S
  //generate a receipt
  //format double value into money
  //format list of addons into a string
}
