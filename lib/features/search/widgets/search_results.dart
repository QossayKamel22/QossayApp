import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qossay_s_application1/core/app_provider/app_provider.dart';
import 'package:qossay_s_application1/domain/entities/category/category.dart';


class SearchResults extends StatelessWidget {
  final String searchQuery;

  SearchResults({required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, child) {
        // Ensure provider.categories uses the same Category class
        List<Category> categories = provider.categories.cast<Category>();

        List<Category> filteredCategories = categories.where((category) {
          return category.name.toLowerCase().contains(searchQuery.toLowerCase());
        }).toList();

        if (filteredCategories.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.face_retouching_off,
                  size: 100,
                  color: Colors.grey,
                ),
                SizedBox(height: 20),
                Text(
                  'Oops!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'No results found.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
        }

        return GridView.builder(
          padding: EdgeInsets.all(10.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: filteredCategories.length,
          itemBuilder: (context, index) {
            // return CategoryCard(category: filteredCategories[index]);
          },
        );
      },
    );
  }
}
