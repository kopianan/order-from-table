// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartProductDataModel _$$_CartProductDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartProductDataModel(
      product: json['product'] == null
          ? null
          : ProductDataModel.fromJson(json['product'] as Map<String, dynamic>),
      qty: json['qty'] as int?,
    );

Map<String, dynamic> _$$_CartProductDataModelToJson(
        _$_CartProductDataModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'qty': instance.qty,
    };
