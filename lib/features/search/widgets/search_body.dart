import 'package:flutter/material.dart';
import 'package:qossay_s_application1/features/search/controllers/find_controller.dart';
import 'package:qossay_s_application1/features/search/widgets/search_header.dart';
import 'package:qossay_s_application1/features/search/widgets/search_results.dart';
import 'package:provider/provider.dart';


class SearchBody extends StatelessWidget {
  final String initialQuery;
  final Function(String) onQueryChanged;

  SearchBody({
    required this.initialQuery,
    required this.onQueryChanged,
  });

  @override
  Widget build(BuildContext context) {
    final searchController = Provider.of<FindController>(context);

    return Column(
      children: [
        SearchHeader(
          onSearch: (query) {
            searchController.updateSearchQuery(query);
            onQueryChanged(query);
          },
        ),
        Expanded(
          child: SearchResults(searchQuery: searchController.searchQuery),
        ),
      ],
    );
  }
}
