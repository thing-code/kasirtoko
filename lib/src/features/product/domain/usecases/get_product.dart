import 'package:kasirtoko/src/features/product/domain/entities/product.dart';
import 'package:kasirtoko/src/features/product/domain/repositories/product_repository.dart';

class GetProduct {
  final ProductRepository repository;

  GetProduct(this.repository);

  Future<({String? error, List<Product> products})> call() => repository.getProduct();
}
