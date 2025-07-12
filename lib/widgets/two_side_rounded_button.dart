import 'package:ebook_online_reading_app/constants.dart';
import 'package:flutter/material.dart';
class TwoSideRoundedButton extends StatelessWidget {

  const TwoSideRoundedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kBlackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(29),
          bottomRight: Radius.circular(29)
        ),
      ),
      child: Text(
        "Read",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}