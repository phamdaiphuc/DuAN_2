import 'package:flutter/material.dart';
import 'package:app_new/models/Product2.dart';
import 'package:flutter_svg/svg.dart';

import 'package:app_new/screens/detail/components/body.dart';
import 'package:string_to_hex/string_to_hex.dart';

class DetailsScreen extends StatefulWidget {
  final product p;
  const DetailsScreen({
    Key? key,
    required this.p,
  }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(StringToHex.toColor(widget.p.color)),
      appBar: appbar(context),
      body: 
      Body(id:widget.p),
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(StringToHex.toColor(widget.p.color)),
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
