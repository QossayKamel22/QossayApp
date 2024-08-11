import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qossay_s_application1/Models/Category.dart';
import 'package:qossay_s_application1/widgets/category_card.dart';
import '../app_provider.dart';

class CategoriesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, child) {
        List<Category> categories = provider.categories;
        if (categories.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
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
