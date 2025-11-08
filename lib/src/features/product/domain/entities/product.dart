import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kasirtoko/src/core/core.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const Product({
    this.id,
    required this.name,
    required this.description,
    required this.sold,
    required this.sale,
    required this.stock,
    required this.price,
    required this.category,
    required this.expiredAt,
  });

  @override
  final int? id;

  @override
  final String name;

  @override
  final String description;

  @override
  final int sold;

  @override
  final int sale;

  @override
  final int stock;

  @override
  final int price;

  @override
  final ProductCategory category;

  @override
  final DateTime expiredAt;
}
