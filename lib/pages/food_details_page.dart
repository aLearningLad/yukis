import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yukis/models/food.dart';
import 'package:yukis/themes/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
// list view of food details
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView(
              children: [
                // image
                Image.asset(
                  widget.food.imagePath,
                  height: 200,
                ),

                const SizedBox(
                  width: 25,
                ),

                // rating
                Row(
                  children: [
                    // star icon
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    // rating number
                    Text(
                      widget.food.rating,
                      style: TextStyle(
                          color: Colors.grey[600], fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                // food name
                Text(
                  widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                ),

                const SizedBox(
                  height: 25,
                ),

                // description
                Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),

                const SizedBox(height: 10),

                Text(
                  "Expertly sliced salmon with creme almond du plantue, on a bed of sweet potato monash and asparagus. Each fillet is prepared to the highest standard, overseen by Head Chefs Kamui Masaki, Adrian Willis and Zhou Masayoshi. Love the world over, Yuki's Salmon Sushi is a staple of any culinary event",
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: 14, height: 2),
                )
              ],
            ),
          )),
// price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
//  price + quantity
                Row(
                  children: [
                    // price
                    Text(
                      widget.food.price,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    // quantity
                    Row(
                      children: [
                        // minus btn

                        // order count

                        // minus btn
                      ],
                    )
                  ],
                )

// add to cart button
              ],
            ),
          )
        ],
      ),
    );
  }
}
