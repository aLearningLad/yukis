import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:yukis/components/button.dart';
import 'package:yukis/components/food_tile.dart';
import 'package:yukis/models/food.dart';
import 'package:yukis/models/shop.dart';
import 'package:yukis/pages/food_details_page.dart';
import 'package:yukis/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
// navigate when food tile clicked
    void navigateToFoodDetails(int index) {
// get shop
      final shop = context.read<Shop>();

// get shop's menu
      final foodMenu = shop.foodMenu;

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FoodDetailsPage(
                    food: foodMenu[index],
                  )));
    }

    // get shop
    final shop = context.read<Shop>();

// get shop's menu
    final foodMenu = shop.foodMenu;

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
      body: SingleChildScrollView(
        //this allows me to scroll
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // promo banner
              Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                margin: const EdgeInsets.symmetric(vertical: 15),
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
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here . . .",
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

              // menu list title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
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

              // menu list
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                    onTap: () => navigateToFoodDetails(index),
                    food: foodMenu[index],
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // popular food
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(left: 5, right: 5, bottom: 25),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // image
                        Image.asset(
                          "lib/images/salmon.png",
                          height: 60,
                        ),

                        const SizedBox(
                          width: 20,
                        ),

                        // name & price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // name
                            Text(
                              "Mashima Salmon",
                              style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                            ),

                            const SizedBox(
                              height: 10,
                            ),

                            // price
                            Text("R139.99")
                          ],
                        ),
                      ],
                    ),
                    // heart
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                      size: 28,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
