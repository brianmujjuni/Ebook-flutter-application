import 'package:ebook_reading_app/constants.dart';
import 'package:ebook_reading_app/widgets/book_rating.dart';
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
            Container(
              height: 245,
              width: 202,
              // color: Colors.amber,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 221,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 30),
                              blurRadius: 33,
                              color: kShadowColor)
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/book-1.png",
                    width: 150,
                  ),
                  Positioned(
                    top: 35,
                    right: 10,
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                        ),
                        BookRating(
                          score: 4.9,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 160,
                    child: Container(
                      height: 85,
                      width: 202,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: kBlackColor),
                                children: [
                                  TextSpan(
                                    text: "Crushing & Influence\n ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                      text: "Automex Technologies",
                                      style: TextStyle(color: kBlackColor))
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Container(
                                width: 101,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                alignment: Alignment.center,
                                child: Text("Details"),
                              ),
                              Expanded(child: TwoRoundedButton(text: "Read",press: (){},))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TwoRoundedButton extends StatelessWidget {
  final String text;
  final double radious = 29;
  final VoidCallback press;
  const TwoRoundedButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(29), bottomRight: Radius.circular(29)),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
