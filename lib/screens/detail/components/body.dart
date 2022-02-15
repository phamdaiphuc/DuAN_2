import 'package:app_new/constants.dart';
import 'package:app_new/screens/detail/components/product_title_with_image.dart';
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
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24)
                          )
                          ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Color'),

                                Row(
                                  children: <Widget>[
                                    colorDot(color: Color(0xFF356C95)),
                                    colorDot(color: Color(0xFF356C95)),
                                    colorDot(color: Color(0xFF356C95))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: RichText(
                                text: TextSpan(
                                    style: TextStyle(color: kTextColor),
                                    children: [
                                  TextSpan(
                                    text: 'Size\n',
                                  ),
                                  TextSpan(text: "${product.size} cm",style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight:FontWeight.bold))
                                ])),
                          )
                        ],
                      ),
                      Text(product.description)
                    ],
                  ),
                ),
                Producttitleimage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class colorDot extends StatelessWidget {
  final color;
  final isSelected;
  const colorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
