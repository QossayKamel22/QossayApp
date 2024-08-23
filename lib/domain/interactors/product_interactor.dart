import 'package:qossay_s_application1/data/services/api_services.dart';
import 'package:qossay_s_application1/domain/entities/product/product.dart';


class ProductInteractor {
  final ApiService _apiService;

  ProductInteractor(this._apiService);

  Future<List<Product>?> getFeaturedProducts() async {
    try {
      return await _apiService.fetchFeaturedProducts();
    } catch (e) {
      print('Error fetching products: $e');
      return null;
    }
  }
}
