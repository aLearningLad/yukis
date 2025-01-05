import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),

            // shop name
            Text("Yuki's",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28, color: Colors.white)),

            const SizedBox(
              height: 25,
            ),

            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/sushi.png'),
            ),

            // title
            Text(
              "SUSHI GOODNESS, JUST A CLICK AWAY",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 40, color: Colors.white),
            ),

            const SizedBox(
              height: 10,
            ),

            // subtitle
            Text(
              "The world's best-loved Japanese food parlor at your fingertips",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),

            const SizedBox(
              height: 25,
            )

            // get started btn
          ],
        ),
      ),
    );
  }
}
