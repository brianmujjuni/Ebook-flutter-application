import 'package:ebook_reading_app/constants.dart';
import 'package:ebook_reading_app/widgets/book_rating.dart';
import 'package:ebook_reading_app/widgets/reading_card_list.dart';
import 'package:ebook_reading_app/widgets/two_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_page_bg.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displaySmall,
                  children: [
                    TextSpan(text: "What are you \nreading "),
                    TextSpan(
                        text: "today?",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReadingListCard(
                    image: "assets/images/book-1.png",
                    title: "Crushing & Influence",
                    auth: "Automex technologies",
                    rating: 4.9,
                    pressDetails: (){},
                    pressRead: (){},
                  ),
                    ReadingListCard(
                    image: "assets/images/book-2.png",
                    title: "Top Ten Business Hacks",
                    auth: "Automex technologies",
                    rating: 4.8,
                    pressDetails: (){},
                    pressRead: (){},
                  ),
                  SizedBox(width: 30,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
