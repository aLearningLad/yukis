import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yukis/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Center(
              child: Image.asset(
                'lib/images/sushi.png',
                width: 200,
                height: 200,
              ),
            ),

            const SizedBox(
              height: 25,
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
            ),

            // get started btn
            MyButton(
              text: "Get Started",
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
