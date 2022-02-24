// import 'package:flutter/material.dart';
// import 'package:app_new/models/Product.dart';
// import 'package:flutter_svg/svg.dart';

// import 'package:app_new/screens/detail/components/body.dart';

// class DetailsScreen extends StatelessWidget {
//   final Product product;
//   const DetailsScreen({Key? key, required this.product}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: product.color,
//       appBar: appbar(context),
//       body: Body(product: product),
//     );
//   }

//   AppBar appbar(BuildContext context) {
//     return AppBar(
//       backgroundColor: product.color,
//       elevation: 0,
//       leading: IconButton(
//         icon: SvgPicture.asset(
//           'assets/icons/back.svg',
//           color: Colors.white,
//         ),
//         onPressed: () => Navigator.pop(context),
//       ),
//       actions: [
//         IconButton(
//             onPressed: null, icon: SvgPicture.asset('assets/icons/search.svg')),
//         IconButton(
//             onPressed: null, icon: SvgPicture.asset('assets/icons/cart.svg'))
//       ],
//     );
//   }
// }
