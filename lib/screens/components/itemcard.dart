import 'package:flutter/material.dart';
import 'package:app_new/models/Product.dart';
import 'package:app_new/constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press; 
  // final Function press;
  const ItemCard({
    Key? key,
    required this.press,
    required this.product,
    // required this.press ,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product.color, borderRadius: BorderRadius.circular(16)),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(product.title, style: TextStyle(color: kTextColor)),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
