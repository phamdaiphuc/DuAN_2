import 'package:flutter/material.dart';
import 'package:app_new/constants.dart';
import 'package:app_new/screens/components/categories.dart';

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
      Container(
        padding: EdgeInsets.all(kDefaultPaddin),
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          color:Colors.red,
          borderRadius: BorderRadius.circular(16)

        ),
      )

    ]);
  }
}

// chung ta can statefullwidget cho phan the loai
