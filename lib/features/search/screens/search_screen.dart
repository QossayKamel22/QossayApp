import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qossay_s_application1/core/presentation/widgets/app_drawer.dart';
import 'package:qossay_s_application1/features/search/controllers/find_controller.dart';
import 'package:qossay_s_application1/features/search/widgets/search_body.dart';
import 'package:qossay_s_application1/core/presentation/widgets/custom_app_bar.dart';

class SearchScreen extends StatelessWidget {
  final String initialQuery;

  SearchScreen({required this.initialQuery});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FindController()..updateSearchQuery(initialQuery),
      child: Consumer<FindController>(
        builder: (context, controller, child) {
          return Scaffold(
            appBar: CustomAppBar(title: 'Search'),
            drawer: AppDrawer(),
            body: SearchBody(
              initialQuery: controller.searchQuery,
              onQueryChanged: (query) => controller.updateSearchQuery(query),
            ),
          );
        },
      ),
    );
  }
}
