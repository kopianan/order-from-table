import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data_model.freezed.dart';
part 'product_data_model.g.dart';

@freezed
class ProductDataModel with _$ProductDataModel {
  factory ProductDataModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
  }) = _ProductDataModel;

  factory ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDataModelFromJson(json);
}
