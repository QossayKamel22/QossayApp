import 'package:flutter/material.dart';
import 'package:qossay_s_application1/data/services/api_services.dart';
import 'package:qossay_s_application1/domain/entities/category/category.dart';
import 'package:qossay_s_application1/domain/entities/product/product.dart';
import 'package:qossay_s_application1/domain/entities/user/user.dart';


import 'package:qossay_s_application1/features/login/screens/login_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../presentation/widgets/custom_snack_bar.dart';

class AppProvider with ChangeNotifier {
  List<Category> _categories = [];
  List<Product> _products = [];
  User? _user;

  List<Category> get categories => _categories;
  List<Product> get products => _products;
  User? get user => _user;

  final ApiService apiService = ApiService();

  AppProvider() {
    fetchCategories();
    fetchProducts();
  }

  Future<void> fetchCategories() async {
    try {
      _categories = (await apiService.fetchCategories())!;
      notifyListeners();
    } catch (e) {
      print('Failed to load categories: $e');
    }
  }

  Future<void> fetchProducts() async {
    try {
      _products = (await apiService.fetchFeaturedProducts())!;
      notifyListeners();
    } catch (e) {
      print('Failed to load products: $e');
    }
  }

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

  void logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');

    _user = null;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );

    showCustomSnackBar(context, 'You have been logged out', Colors.orange);
  }
}
