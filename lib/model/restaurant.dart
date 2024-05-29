import 'package:delivery_app/model/food.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> menu = [
    //dishi
    Food(
      name: 'Chapo dondo',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.dishi,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'Chapo dondo',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (5).jfif',
      price: 100,
      category: FoodCategory.dishi,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'Chapo surwa',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.dishi,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
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
        Addon(name: 'Firiri', price: 10)
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
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    //salads
    Food(
      name: 'tam tam',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'vitu smart smart',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'real deal',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'pure sweetness',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'pure greatness',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),

    //sides
    Food(
      name: 'kapolite',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'eazy peazy',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'wacha uchekwe',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'deal breaker',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'vile inafaa',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),

    //desserts
    Food(
      name: 'cake',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'marble',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'vanilla cream',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'strawbeery toppings',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'mouth watering',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),

    //drinks
    Food(
      name: 'makali',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'cocktail',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'softdrinks',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'juice',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
    Food(
      name: 'creamy',
      description: 'chapo imekatatanishwa smart',
      imagePath: 'lib/images/dishi/download (3).jfif',
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Avocado', price: 20),
        Addon(name: 'Firiri', price: 10)
      ],
    ),
  ];

  //getters
  //List<Food> get menu => _menu;

  //operations
  //add to cart
  //remove from cart
  //get total price of cart
  //get total number of items in cart
  //clear cart

  //helpers:
  //generate a receipt
  //format double value into money
  //format list of addons into a string
}
