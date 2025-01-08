import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yukis/components/food_tile.dart';
import 'package:yukis/models/food.dart';
import 'package:yukis/models/shop.dart';
import 'package:yukis/themes/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
        builder: (context, value, child) => Scaffold(
              appBar: AppBar(
                title: const Text("My Cart"),
                backgroundColor: primaryColor,
              ),
              body: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    // get food from cart
                    final Food food = value.cart[index];
                    // get food name
                    final String foodName = food.name;

                    // get food price
                    final String foodPrice = food.price;

                    return (ListTile(
                      title: Text(foodName),
                      subtitle: Text(foodPrice),
                      trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            // get shop
                            final Shop shop = context.read<Shop>();

                            // get remove method & call it
                            void removeFromCart = shop.removeFromCart(food);
                          }),
                    ));
                  }),
            ));
  }
}
