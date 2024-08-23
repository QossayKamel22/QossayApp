import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/widgets/app_drawer.dart';
import 'package:qossay_s_application1/core/presentation/widgets/bottom_nav_bar.dart';
import 'package:qossay_s_application1/features/dashboard/widgets/dashboard_body.dart';
import 'package:qossay_s_application1/features/dashboard/widgets/home_app_bar.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(onProfilePressed: () {}, title: ''),
      drawer: AppDrawer(),
      body: DashboardBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
