import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yukis/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;

  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160, // Constrain the width of the FoodTile
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 15), // Adjust margin for spacing
      padding: const EdgeInsets.all(15), // Adjust padding for better fit
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Constrain vertical space
        children: [
          // Food image
          ClipRRect(
            borderRadius:
                BorderRadius.circular(15), // Rounded corners for image
            child: Image.asset(
              food.imagePath,
              height: 100, // Reduce height to fit layout better
              width: double.infinity, // Make the image take full width
              fit: BoxFit.cover, // Scale image to fit nicely
            ),
          ),
          const SizedBox(height: 10), // Add spacing between elements

          // Food name
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 16, // Slightly smaller font for better layout
              color: Colors.grey[800],
            ),
            overflow: TextOverflow.ellipsis, // Handle long text gracefully
            maxLines: 1, // Limit text to one line
          ),
          const SizedBox(height: 5), // Spacing between text and price

          // Price + Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Price
              Text(
                food.price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  fontSize: 14, // Adjust font size
                ),
              ),

              // Rating
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                    size: 16, // Adjust icon size
                  ),
                  const SizedBox(width: 2), // Spacing between icon and text
                  Text(
                    food.rating,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14, // Adjust font size
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
