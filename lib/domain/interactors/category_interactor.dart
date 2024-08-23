import 'package:qossay_s_application1/data/services/api_services.dart';
import 'package:qossay_s_application1/domain/entities/category/category.dart';


class CategoryInteractor {
  final ApiService _apiService;

  CategoryInteractor(this._apiService);

  Future<List<Category>?> getCategories() async {
    try {
      return await _apiService.fetchCategories();
    } catch (e) {
      print('Error fetching categories: $e');
      return null;
    }
  }
}
