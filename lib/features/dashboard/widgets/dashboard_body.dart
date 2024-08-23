import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/widgets/categories_grid.dart';
import 'package:qossay_s_application1/core/presentation/widgets/product_widget.dart';
import 'package:qossay_s_application1/core/presentation/widgets/search_widget.dart';
import 'package:qossay_s_application1/features/dashboard/widgets/products_grid_two.dart';
import 'package:qossay_s_application1/features/dashboard/widgets/trending_products.dart';
import 'package:qossay_s_application1/features/search/screens/search_screen.dart';

class DashboardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchWidget(
            onSearch: (String query) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(initialQuery: query),
                ),
              );
            },
          ),
          CategoriesGrid(),
          SizedBox(height: 10.0),
          ProductsGrid(),
          SizedBox(height: 20),
          TrendingProductsWidget(),
          SizedBox(height: 20.0),
          ProductWidget(),
        ],
      ),
    );
  }
}
