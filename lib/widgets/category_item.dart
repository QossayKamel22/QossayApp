import 'package:flutter/material.dart';
import 'package:qossay_s_application1/screens/categories_screen.dart';
import 'category_detailes_dialog.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  CategoryItem({
    required this.imageUrl,
    required this.title,
  });

  String get oneWordTitle {
    List<String> words = title.split(' ');
    return words.isNotEmpty ? words.first : title;
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CategoryDetailsDialog(
          imageUrl: imageUrl,
          title: title,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToCategories(context),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[300],
            backgroundImage:
                imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
            child: imageUrl.isEmpty
                ? Center(
                    child: Icon(
                      Icons.image,
                      color: Colors.orange[600],
                      size: 30,
                    ),
                  )
                : null,
          ),
          SizedBox(height: 8),
          Text(
            oneWordTitle, // Use the one-word title for display
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToCategories(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoriesScreen()),
    );
  }
}
