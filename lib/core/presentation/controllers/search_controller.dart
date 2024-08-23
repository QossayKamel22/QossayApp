import 'package:flutter/material.dart';

class SearchingController extends ChangeNotifier {
  final TextEditingController _searchController = TextEditingController();

  TextEditingController get searchController => _searchController;

  String _query = '';

  String get query => _query;

  void updateQuery(String newQuery) {
    _query = newQuery;
    notifyListeners();
  }

  void clearQuery() {
    _query = '';
    _searchController.clear();
    notifyListeners();
  }

  void performSearch(Function(String query) onSearch) {
    onSearch(_query);
  }
}
