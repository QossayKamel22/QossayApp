import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/Category.dart';
import '../app_provider.dart';
import '../widgets/category_card.dart';

class SearchResults extends StatelessWidget {
  final String searchQuery;

  SearchResults({required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, child) {
        List<Category> categories = provider.categories;

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
            return CategoryCard(category: filteredCategories[index]);
          },
        );
      },
    );
  }
}
