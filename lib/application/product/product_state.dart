part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.onGetAllProduct(
          {bool? isLoading,
          Option<Either<String, List<ProductDataModel>>>? product}) =
      _OnGetAllProduct;
}
