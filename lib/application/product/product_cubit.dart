import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:order_from_table/domain/product/i_product.dart';
import 'package:order_from_table/domain/product/product_data_model.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._iProduct) : super(ProductState.initial());

  IProduct _iProduct;

  void getAllProduct() async {
    print("test");
    emit(ProductState.onGetAllProduct(isLoading: true, product: none()));
    var _result = await _iProduct.getAllProducts();
    emit(
        ProductState.onGetAllProduct(isLoading: false, product: some(_result)));
  }
}
