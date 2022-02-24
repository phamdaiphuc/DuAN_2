import 'package:flutter/material.dart';
import 'package:app_new/constants.dart';
import 'package:app_new/screens/detail/detais_screen.dart';
import 'package:app_new/network/http_api.dart';
import '../../models/Product2.dart';
import 'itemcard.dart';
import 'categories.dart';
import 'package:http/http.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late List<product> listproduct;
  late Future<List<product>> listFuture;
  late updatedl service;
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
      Expanded(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: FutureBuilder<List<product>>(
                future: listFuture,
                builder: (context, future) {
                  if (future.hasData) {
                    listproduct = future.data!;
                    return GridView.builder(
                      itemCount: listproduct.length,
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: kDefaultPaddin,
                          crossAxisSpacing: kDefaultPaddin,
                          childAspectRatio: 0.75,
                        ),
                        itemBuilder: (context, index) => ItemCard(
                              title: listproduct[index].title,
                              colorss: listproduct[index].color,
                              image: listproduct[index].image,
                              price: listproduct[index].price,
                            ));
                  } else {
                    return Container(
                      child: Text('No DaTa'),
                    );
                  }
                })),
      ),
      // Expanded(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      //     child: GridView.builder(
      //         itemCount: listproduct.length,
      //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           mainAxisSpacing: kDefaultPaddin,
      //           crossAxisSpacing: kDefaultPaddin,
      //           childAspectRatio: 0.75,
      //         ),
      //         itemBuilder: (context, index) => ItemCard(
      //               product: products[index],
      //               press: () => Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => DetailsScreen(
      //                       product: products[index],
      //                     ),
      //                   )),
      //             )),
      //   ),
      // ),
    ]);
  }
}

// chung ta can statefullwidget cho phan the loai


