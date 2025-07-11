import 'package:ebook_online_reading_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/Bitmap.png",
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.displayMedium,
                  children: [
                    TextSpan(
                      text: "Flamin",
                    ),
                    TextSpan(
                      text: "go",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: "start reading",
                fontSize: 20,
                press: () {},
              
              ),
            )
          ],
        ),
      ),
    );
  }
}

