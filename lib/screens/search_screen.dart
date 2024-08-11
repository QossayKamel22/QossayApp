import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/search_header.dart';
import '../widgets/search_results.dart';
import '../widgets/app_drawer.dart';

class SearchScreen extends StatefulWidget {
  final String initialQuery;

  SearchScreen({required this.initialQuery});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _searchQuery = widget.initialQuery;
  }

  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Search'),
      drawer: AppDrawer(),
      body: Column(
        children: [
          SearchHeader(onSearch: _updateSearchQuery),
          Expanded(
            child: SearchResults(searchQuery: _searchQuery),
          ),
        ],
      ),
    );
  }
}
