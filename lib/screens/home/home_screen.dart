import 'package:app_new/constants.dart';
import 'package:flutter/material.dart';
import 'package:app_new/main.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_new/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"),
            onPressed: null,
          ),
          actions: <Widget>[
            IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg"),
              onPressed: null,
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/cart.svg"),
              onPressed: null,
            ),
            SizedBox(width: kDefaultPaddin / 2),
          ],
        ),
        body: Body(),
        );
  }
}
