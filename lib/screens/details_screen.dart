import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Container(
              height: size.height * .4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * .1,
                    ),
                    Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Crushing &",style: Theme.of(context).textTheme.headlineMedium,),
                            Text("Influence",style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),)
                          ],
                        )),
                        Image.asset(
                          "assets/images/book-1.png",
                          height: 200,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
