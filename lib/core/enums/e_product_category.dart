import 'package:qossay_s_application1/core/constants/apis/api_paths.dart';

enum ApiEndpoint { categories, products, users }

String getApiPath(ApiEndpoint endpoint) {
  switch (endpoint) {
    case ApiEndpoint.categories:
      return ApiPaths.categoriesPath;
    case ApiEndpoint.products:
      return ApiPaths.productsPath;
    case ApiEndpoint.users:
      return ApiPaths.usersPath;
  }
}
