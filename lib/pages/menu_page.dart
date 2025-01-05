import 'package:flutter/material.dart';
import 'package:yukis/components/button.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          "Strand, CPT",
          style: TextStyle(color: Colors.grey[600]),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
// promo banner
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    // promo message
                    Text("Get 25% Promo"),

                    // redeem btn
                    MyButton(text: 'Redeem', onTap: () {})
                  ],
                )

// image
              ],
            ),
          )

// search bar

// menu list

// popular food
        ],
      ),
    );
  }
}
