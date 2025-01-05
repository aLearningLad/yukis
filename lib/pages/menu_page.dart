import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yukis/components/button.dart';
import 'package:yukis/components/food_tile.dart';
import 'package:yukis/models/food.dart';
import 'package:yukis/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
// food menu
  List<Food> foodMenu = [
// salmon sushi
    Food(
        name: "Salmon Sushi",
        imagePath: "lib/images/salmon.png",
        price: "R149.99",
        rating: "8.8/10"),

// tuna
    Food(
        name: "Suzuka Tuna",
        imagePath: "lib/images/tuna.png",
        price: "R119.99",
        rating: "9.6/10")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
// promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message
                    Text(
                      "Get 25% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, color: Colors.white),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // redeem btn
                    MyButton(text: 'Redeem', onTap: () {})
                  ],
                ),

// image
                Image.asset(
                  'lib/images/salmon.png',
                  height: 100,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),

// search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

// menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food menu here",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  fontSize: 18),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                        food: foodMenu[index],
                      ))),

          const SizedBox(
            height: 25,
          ),

          //  popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(29),
            child: Row(
              children: [
// image
                Image.asset(
                  "lib/images/salmon.png",
                  height: 60,
                ),

// name & price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
// name
                    Text(
                      "Salmon Deluxe",
                      style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                    ),

                    const SizedBox(height: 10),

// price
                    Text(
                      "R229.99",
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
