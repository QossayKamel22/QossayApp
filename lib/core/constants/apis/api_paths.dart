import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:qossay_s_application1/core/constants/keys/env_keys.dart';


abstract class ApiPaths {
  static final String baseUrl = dotenv.env[EnvKeys.baseUrl] ?? '';
  static final String prefixApi = dotenv.env[EnvKeys.prefixApi] ?? '';

  static final String categoriesPath = '$baseUrl$prefixApi/categories';
  static final String productsPath = '$baseUrl$prefixApi/products';
  static final String usersPath = '$baseUrl$prefixApi/users';
  static final String loginPath = '$baseUrl$prefixApi/auth/login';
}
