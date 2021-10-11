import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_from_table/domain/product/product_data_model.dart';

part 'cart_product_data_model.freezed.dart';
part 'cart_product_data_model.g.dart';

@freezed
class CartProductDataModel with _$CartProductDataModel {
  factory CartProductDataModel({
    ProductDataModel? product,
    int? qty,
  }) = _CartProductDataModel;

  factory CartProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductDataModelFromJson(json);
}
