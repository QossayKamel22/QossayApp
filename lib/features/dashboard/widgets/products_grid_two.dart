import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/app_provider/app_provider.dart';
import 'package:qossay_s_application1/core/presentation/widgets/product_widget.dart';

import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final products = appProvider.products.take(10).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: products.isNotEmpty
          ? SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var i = 0; i < products.length; i += 2)
              Column(
                children: [
                  for (var j = i; j < i + 2 && j < products.length; j++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: ProductWidget(

                        ),
                      ),
                    ),
                ],
              ),
          ],
        ),
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
