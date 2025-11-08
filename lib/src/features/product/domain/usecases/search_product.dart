import 'package:kasirtoko/src/features/product/domain/entities/product.dart';
import 'package:kasirtoko/src/features/product/domain/repositories/product_repository.dart';

class SearchProduct {
  final ProductRepository repository;

  SearchProduct(this.repository);

  Future<({String? error, List<Product> products})> call(String query) =>
      repository.searchProduct(query);
}