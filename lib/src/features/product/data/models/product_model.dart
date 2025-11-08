import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kasirtoko/src/core/core.dart';
import 'package:kasirtoko/src/features/product/domain/entities/product.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
sealed class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    int? id,
    required String name,
    @Default('') String description,
    required int sold,
    required int sale,
    required int stock,
    required int price,
    required ProductCategory category,
    @JsonKey(name: 'expired_at') required DateTime expiredAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Product toEntity() {
    return Product(
      id: id,
      name: name,
      description: description,
      sold: sold,
      sale: sale,
      stock: stock,
      price: price,
      category: category,
      expiredAt: expiredAt,
    );
  }
}
