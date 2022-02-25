import 'package:flutter/material.dart';
import 'package:app_new/models/Product2.dart';
import 'package:flutter_svg/svg.dart';

import 'package:app_new/screens/detail/components/body.dart';
import 'package:string_to_hex/string_to_hex.dart';

class DetailsScreen extends StatefulWidget {

  final String? color_a;
  const DetailsScreen({Key? key,
  
   required this.color_a,
   }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(StringToHex.toColor('color_a')),
      appBar: appbar(context),
      // body: Body(product: product),
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(StringToHex.toColor(' color_a')),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
            onPressed: null, icon: SvgPicture.asset('assets/icons/search.svg')),
        IconButton(
            onPressed: null, icon: SvgPicture.asset('assets/icons/cart.svg'))
      ],
    );
  }
}
