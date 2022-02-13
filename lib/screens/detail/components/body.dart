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
          
          Container(
            height: size.height, 
            child: Stack(
              children:[
                Container(
                  margin: EdgeInsets.only(top: 120.0),
                  height:500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('xin chao\n',style: TextStyle(color: Colors.white),
                      ),
                      Text(product.title,style: TextStyle(color: Colors.white),
                      ),
        
                       ],
            ),
          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
