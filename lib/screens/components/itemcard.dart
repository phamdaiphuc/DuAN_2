import 'package:flutter/material.dart';
import 'package:app_new/constants.dart';
import 'package:string_to_hex/string_to_hex.dart';
class ItemCard extends StatelessWidget {
  final String? title;
  final String? image;
  final int? price;

  // final VoidCallback press;
  final String? colorss;
  // final Function press;
  const ItemCard({
    Key? key,
    required this.image,
    // required this.press,
   required this.title, 
    required this.colorss,
    required this.price,
    // required this.press ,
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
                  color:  Color(StringToHex.toColor('${colorss}')), borderRadius: BorderRadius.circular(16)),
              child: Image.asset(image!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(title!, style: TextStyle(color: kTextColor)),
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
