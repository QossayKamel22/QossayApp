import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:qossay_s_application1/Models/Category.dart';
import 'package:qossay_s_application1/Models/Product.dart';

import '../models/User.dart';

class ApiService {
  final String _categoriesUrl = 'https://api.escuelajs.co/api/v1/categories';
  final String _productsUrl = 'https://api.escuelajs.co/api/v1/products';
  final String _usersUrl = 'https://api.escuelajs.co/api/v1/users';


  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse(_categoriesUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Category.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load categories: ${response.statusCode}');
    }
  }

  Future<List<Product>> fetchFeaturedProducts() async {
    final response = await http.get(Uri.parse(_productsUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products: ${response.statusCode}');
    }
  }
  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(_usersUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => User.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load users: ${response.statusCode}');
    }
  }
}
