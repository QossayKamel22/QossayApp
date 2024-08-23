// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:qossay_s_application1/app_provider.dart';
// import 'package:qossay_s_application1/core/presentation/widgets/product_item.dart';
//
// class ProductWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AppProvider>(
//       builder: (context, appProvider, child) {
//         final products = appProvider.products;
//
//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Featured Products', // Optional: Add a title or header
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//               SizedBox(height: 16.0),
//               SizedBox(
//                 height: 300,
//                 child: products.isNotEmpty
//                     ? ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: products.length,
//                   itemBuilder: (context, index) {
//                     final product = products[index];
//                     return Container(
//                       width: MediaQuery.of(context).size.width * 0.5,
//                       padding: EdgeInsets.all(8.0),
//                       child: ProductItem(
//                         imageUrl: product.imageUrl,
//                         title: product.title,
//                         price: product.price,
//                       ),
//                     );
//                   },
//                 )
//                     : Center(
//                   child: CircularProgressIndicator(),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
