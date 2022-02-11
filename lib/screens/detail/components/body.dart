import 'package:app_new/constants.dart';
import 'package:flutter/material.dart';
import 'package:app_new/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children:[
              Container(
                height:500,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        ],
      ),
    );
  }
}
