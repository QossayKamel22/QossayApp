import 'package:flutter/material.dart';
import 'package:qossay_s_application1/screens/search_screen.dart';
import 'package:qossay_s_application1/widgets/home_app_bar.dart';
import '../widgets/ bottom_navigation_bar.dart';
import '../widgets/app_drawer.dart';
import '../widgets/categories_grid.dart';
import '../widgets/product_grid_one.dart';
import '../widgets/products_grid_two.dart';
import '../widgets/search.dart';
import '../widgets/trending_products.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(onProfilePressed: () {}, title: ''),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
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
            CategoriesWidget(),
            SizedBox(height: 10.0),
            ProductsGrid(),
            SizedBox(height: 20),
            TrendingProductsWidget(),
            SizedBox(height: 20.0),
            ProductWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
