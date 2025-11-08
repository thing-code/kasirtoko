import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kasirtoko/src/features/product/data/models/product_model.dart';

part 'product_state.freezed.dart';

@freezed
sealed class ProductState with _$ProductState {
  factory ProductState.initial() = ProductStateInitial;
  factory ProductState.loading() = ProductStateLoading;
  factory ProductState.loaded({required List<ProductModel> products}) = ProductStateLoaded;
  factory ProductState.error({required String message}) = ProductStateError;
}
