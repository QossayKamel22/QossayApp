import 'package:flutter/material.dart';
import 'package:qossay_s_application1/features/search/screens/search_screen.dart';
import 'package:qossay_s_application1/core/presentation/widgets/categories_grid_two.dart';
import 'package:qossay_s_application1/features/search/widgets/search.dart';

class CategoriesBody extends StatelessWidget {
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
          CategoriesGridTwo(),
        ],
      ),
    );
  }
}
