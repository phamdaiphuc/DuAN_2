import 'package:flutter/material.dart';

import 'package:app_new/constants.dart';

class ItemCard extends StatelessWidget {
  final int colorl;
  final VoidCallback press;
  final String image;
  final String title;
  final int price;
 
  const ItemCard({
    Key? key,
     required this.press,
    required this.colorl,
    required this.image,
    required this.title,
    required this.price,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      // onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),

              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: Color(colorl),
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(title, style: TextStyle(color: kTextColor)),
          ),
          Text(
            "${price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
