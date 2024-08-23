import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/widgets/app_drawer.dart';
import 'package:qossay_s_application1/core/presentation/widgets/custom_app_bar.dart';
import 'package:qossay_s_application1/features/categories/widgets/categories_body.dart';


class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Categories'),
      drawer: AppDrawer(),
      body: CategoriesBody(),
    );
  }
}
