import 'package:flutter/material.dart';
import 'package:qossay_s_application1/widgets/app_drawer.dart';
import 'package:qossay_s_application1/widgets/search.dart';
import '../widgets/categories_grid_two.dart';
import '../widgets/custom_app_bar.dart';
import '../screens/search_screen.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Categories'),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(
              onSearch: (String query) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchScreen(initialQuery: query)),
                );
              },
            ),
            CategoriesGrid(),
          ],
        ),
      ),
    );
  }
}
