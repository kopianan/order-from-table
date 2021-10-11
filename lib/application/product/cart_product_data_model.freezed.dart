// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartProductDataModel _$CartProductDataModelFromJson(Map<String, dynamic> json) {
  return _CartProductDataModel.fromJson(json);
}

/// @nodoc
class _$CartProductDataModelTearOff {
  const _$CartProductDataModelTearOff();

  _CartProductDataModel call({ProductDataModel? product, int? qty}) {
    return _CartProductDataModel(
      product: product,
      qty: qty,
    );
  }

  CartProductDataModel fromJson(Map<String, Object?> json) {
    return CartProductDataModel.fromJson(json);
  }
}

/// @nodoc
const $CartProductDataModel = _$CartProductDataModelTearOff();

/// @nodoc
mixin _$CartProductDataModel {
  ProductDataModel? get product => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductDataModelCopyWith<CartProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductDataModelCopyWith<$Res> {
  factory $CartProductDataModelCopyWith(CartProductDataModel value,
          $Res Function(CartProductDataModel) then) =
      _$CartProductDataModelCopyWithImpl<$Res>;
  $Res call({ProductDataModel? product, int? qty});

  $ProductDataModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartProductDataModelCopyWithImpl<$Res>
    implements $CartProductDataModelCopyWith<$Res> {
  _$CartProductDataModelCopyWithImpl(this._value, this._then);

  final CartProductDataModel _value;
  // ignore: unused_field
  final $Res Function(CartProductDataModel) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $ProductDataModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDataModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$CartProductDataModelCopyWith<$Res>
    implements $CartProductDataModelCopyWith<$Res> {
  factory _$CartProductDataModelCopyWith(_CartProductDataModel value,
          $Res Function(_CartProductDataModel) then) =
      __$CartProductDataModelCopyWithImpl<$Res>;
  @override
  $Res call({ProductDataModel? product, int? qty});

  @override
  $ProductDataModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$CartProductDataModelCopyWithImpl<$Res>
    extends _$CartProductDataModelCopyWithImpl<$Res>
    implements _$CartProductDataModelCopyWith<$Res> {
  __$CartProductDataModelCopyWithImpl(
      _CartProductDataModel _value, $Res Function(_CartProductDataModel) _then)
      : super(_value, (v) => _then(v as _CartProductDataModel));

  @override
  _CartProductDataModel get _value => super._value as _CartProductDataModel;

  @override
  $Res call({
    Object? product = freezed,
    Object? qty = freezed,
  }) {
    return _then(_CartProductDataModel(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProductDataModel implements _CartProductDataModel {
  _$_CartProductDataModel({this.product, this.qty});

  factory _$_CartProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductDataModelFromJson(json);

  @override
  final ProductDataModel? product;
  @override
  final int? qty;

  @override
  String toString() {
    return 'CartProductDataModel(product: $product, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartProductDataModel &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, qty);

  @JsonKey(ignore: true)
  @override
  _$CartProductDataModelCopyWith<_CartProductDataModel> get copyWith =>
      __$CartProductDataModelCopyWithImpl<_CartProductDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductDataModelToJson(this);
  }
}

abstract class _CartProductDataModel implements CartProductDataModel {
  factory _CartProductDataModel({ProductDataModel? product, int? qty}) =
      _$_CartProductDataModel;

  factory _CartProductDataModel.fromJson(Map<String, dynamic> json) =
      _$_CartProductDataModel.fromJson;

  @override
  ProductDataModel? get product;
  @override
  int? get qty;
  @override
  @JsonKey(ignore: true)
  _$CartProductDataModelCopyWith<_CartProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
