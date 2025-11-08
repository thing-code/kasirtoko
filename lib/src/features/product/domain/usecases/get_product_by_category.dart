import 'package:kasirtoko/src/core/core.dart';
import 'package:kasirtoko/src/features/product/domain/entities/product.dart';
import 'package:kasirtoko/src/features/product/domain/repositories/product_repository.dart';

class GetProductByCategory {
  final ProductRepository repository;

  GetProductByCategory(this.repository);

  Future<({String? error, List<Product> products})> call(ProductCategory category) =>
      repository.getProductByCategory(category);
}
