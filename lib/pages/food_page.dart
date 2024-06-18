import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/model/cart_item.dart';
import 'package:delivery_app/model/food.dart';
import 'package:delivery_app/model/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //method to add food to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    //close the current page
    Navigator.pop(context);
    //get selected addons
    List<Addon> currentlySelectedAddon = [];

    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddon.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddon);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //food image
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),

                      //food price
                      Text(
                        'kshs ${widget.food.price}/=',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //food description
                      Text(widget.food.description),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add-ons",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //addons
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              Addon addon = widget.food.availableAddons[index];

                              return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text('kshs ${addon.price}/='),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                MyButton(
                    onTap: () => addToCart(widget.food, widget.selectedAddons),
                    text: "Add To Cart"),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
        //unnecessary
        /*
        SafeArea(
          child: Container(
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.secondary),
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.pop(context)),
          ),
        )*/
      ],
    );
  }
}
