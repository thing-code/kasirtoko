import 'package:kasirtoko/src/core/core.dart';
import 'package:kasirtoko/src/features/product/domain/entities/product.dart';

abstract class ProductRepository {
  Future<({String? error, List<Product> products})> getProduct();
  Future<({String? error, List<Product> products})> getProductByCategory(ProductCategory category);
  Future<({String? error, List<Product> products})> searchProduct(String query);
}