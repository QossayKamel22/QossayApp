import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/app_provider/app_provider.dart';

import 'package:provider/provider.dart';
import 'package:qossay_s_application1/core/presentation/widgets/product_item.dart';
import 'package:qossay_s_application1/domain/entities/product/product.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: appProvider.products.isNotEmpty
                ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: appProvider.products.length,
              itemBuilder: (context, index) {
                final product = appProvider.products[index];
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: EdgeInsets.all(8.0),
                  child: ProductWidget(

                  ),
                );
              },
            )
                : Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}

extension on Product {
  get image => null;
}
