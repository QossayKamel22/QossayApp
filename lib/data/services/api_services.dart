import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:qossay_s_application1/data/base/base_api_service.dart';
import 'package:qossay_s_application1/domain/entities/category/category.dart';
import 'package:qossay_s_application1/domain/entities/product/product.dart';
import 'package:qossay_s_application1/domain/entities/user/user.dart';
import '../../core/constants/apis/api_paths.dart';


class ApiService extends BaseApiService {


  Future<http.Response?> login(String email, String password) async {
    return post('${ApiPaths.loginPath}', {
      'email': email,
      'password': password,
    });
  }


  Future<http.Response?> register(String email, String password) async {
    return post('${ApiPaths.usersPath}', {
      'email': email,
      'password': password,
    });
  }

  // Method to fetch categories
  Future<List<Category>?> fetchCategories() async {
    final response = await get(ApiPaths.categoriesPath);
    if (response != null) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Category.fromJson(item)).toList();
    }
    return null;
  }


  Future<List<Product>?> fetchFeaturedProducts() async {
    final response = await get(ApiPaths.productsPath);
    if (response != null) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Product.fromJson(item)).toList();
    }
    return null;
  }


  Future<List<User>?> fetchUsers() async {
    final response = await get(ApiPaths.usersPath);
    if (response != null) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => User.fromJson(item)).toList();
    }
    return null;
  }
}
