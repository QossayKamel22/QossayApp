import 'package:qossay_s_application1/domain/entities/category/category.dart';

extension CategoryExtensions on Category {
  bool isPopular() {
    return this.name.toLowerCase().contains('popular');
  }
}
