import 'package:app_new/network/http_api.dart';
import 'package:flutter/material.dart';
import 'package:app_new/constants.dart';
import 'package:app_new/models/Product2.dart';
import 'package:app_new/screens/detail/detais_screen.dart';
import 'itemcard.dart';
import 'categories.dart';

class Body extends StatefulWidget {
  @override
  _body createState() => _body();
}

class _body extends State<Body> {
  late updatedl service;
  late Future<List<Product>> listFuture;
  late List<Product> listProduct;

  @override
  void initState() {
    super.initState();
    service = updatedl();
    listFuture = service.getListCategory();
  }

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
      // Expanded(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      //     child: GridView.builder(
      //         itemCount: listProduct.length,
      //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           mainAxisSpacing: kDefaultPaddin,
      //           crossAxisSpacing: kDefaultPaddin,
      //           childAspectRatio: 0.75,
      //         ),
      //         itemBuilder: (context, index) {
      //           return ItemCard(
      //               // press: () => Navigator.push(
      //               //     context,
      //               //     MaterialPageRoute(
      //               //         builder: ((context) => DetailsScreen(
      //               //             product: listProductLoading[index])))),
      //               colorsd: listProduct[index].color,
      //               image: listProduct[index].image,
      //               title: listProduct[index].title,
      //               price: listProduct[index].price);
      //         }

      //         // ItemCard(
      //         //       product: products[index],
      //         //       press: () => Navigator.push(
      //         //           context,
      //         //           MaterialPageRoute(
      //         //             builder: (context) => DetailsScreen(
      //         //               product: products[index]  ,
      //         //             ),
      //         //           )),
      //         //     )
      //         ),
      //   ),
      // ),
      Expanded(
        child: Padding(  padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: FutureBuilder<List<Product>>(
          future: listFuture,
          builder: (context, future) {
            if (future.hasData) {
              listProduct = future.data!;
              return GridView.builder(
                  itemCount: listProduct.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return ItemCard(
                         press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DetailsScreen(
                                   product: listProduct[index])))),
                        colorl:listProduct[index].color,
                        image: listProduct[index].image,
                        title: listProduct[index].title,
                   
                        price: listProduct[index].price);
                  });
            } else {
              return Container(
                child: Column(
                  children: [Text('noData')],
                )
                );
            }
          },
        ),
      )
    )]);
  }
}

// chung ta can statefullwidget cho phan the loai
