
import 'package:flutter/material.dart';
import 'package:app_new/constants.dart';
import 'package:app_new/models/Product.dart';
import 'package:app_new/screens/detail/detais_screen.dart';
import 'itemcard.dart';
import 'categories.dart';
class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Text(
          'women',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      Categories(),
      Expanded(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
               itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index]  , 
                            ),
                          )),
                    )),
                              ),
        ),
      
    ]);
  }
}

// chung ta can statefullwidget cho phan the loai
