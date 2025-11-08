part of 'product_cubit.dart';

@freezed
sealed class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
}
