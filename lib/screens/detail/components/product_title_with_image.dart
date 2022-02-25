import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product2.dart';

class Producttitleimage extends StatelessWidget {
  final product a;

  const Producttitleimage({
    Key? key,
    required this.a,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'xin chao\n',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            a.title!,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Price\n"),
                TextSpan(
                  text: "\$${a.price}",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ])),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Image.asset(a.image!),
              ),
            ],
          )
        ],
      ),
    );
  }
}
