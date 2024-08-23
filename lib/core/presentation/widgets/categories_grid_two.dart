import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qossay_s_application1/core/app_provider/app_provider.dart';
import 'package:qossay_s_application1/domain/entities/category/category.dart';
import 'category_card.dart'; // Import your CategoryCard widget

class CategoriesGridTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, child) {
        List<Category> categories = provider.categories;

        // Show a loading indicator if categories are not yet loaded
        if (categories.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }

        // Display the categories in a grid
        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          },
        );
      },
    );
  }
}
