import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/widgets/search_widget.dart';


class SearchHeader extends StatelessWidget {
  final Function(String) onSearch;

  SearchHeader({required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchWidget(
        onSearch: onSearch,
      ),
    );
  }
}
