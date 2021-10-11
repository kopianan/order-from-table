// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDataModel _$ProductDataModelFromJson(Map<String, dynamic> json) {
  return _ProductDataModel.fromJson(json);
}

/// @nodoc
class _$ProductDataModelTearOff {
  const _$ProductDataModelTearOff();

  _ProductDataModel call(
      {int? id,
      String? title,
      double? price,
      String? description,
      String? category,
      String? image}) {
    return _ProductDataModel(
      id: id,
      title: title,
      price: price,
      description: description,
      category: category,
      image: image,
    );
  }

  ProductDataModel fromJson(Map<String, Object?> json) {
    return ProductDataModel.fromJson(json);
  }
}

/// @nodoc
const $ProductDataModel = _$ProductDataModelTearOff();

/// @nodoc
mixin _$ProductDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataModelCopyWith<ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataModelCopyWith<$Res> {
  factory $ProductDataModelCopyWith(
          ProductDataModel value, $Res Function(ProductDataModel) then) =
      _$ProductDataModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      double? price,
      String? description,
      String? category,
      String? image});
}

/// @nodoc
class _$ProductDataModelCopyWithImpl<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  _$ProductDataModelCopyWithImpl(this._value, this._then);

  final ProductDataModel _value;
  // ignore: unused_field
  final $Res Function(ProductDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductDataModelCopyWith<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  factory _$ProductDataModelCopyWith(
          _ProductDataModel value, $Res Function(_ProductDataModel) then) =
      __$ProductDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      double? price,
      String? description,
      String? category,
      String? image});
}

/// @nodoc
class __$ProductDataModelCopyWithImpl<$Res>
    extends _$ProductDataModelCopyWithImpl<$Res>
    implements _$ProductDataModelCopyWith<$Res> {
  __$ProductDataModelCopyWithImpl(
      _ProductDataModel _value, $Res Function(_ProductDataModel) _then)
      : super(_value, (v) => _then(v as _ProductDataModel));

  @override
  _ProductDataModel get _value => super._value as _ProductDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
  }) {
    return _then(_ProductDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDataModel implements _ProductDataModel {
  _$_ProductDataModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});

  factory _$_ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDataModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final double? price;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? image;

  @override
  String toString() {
    return 'ProductDataModel(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, price, description, category, image);

  @JsonKey(ignore: true)
  @override
  _$ProductDataModelCopyWith<_ProductDataModel> get copyWith =>
      __$ProductDataModelCopyWithImpl<_ProductDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDataModelToJson(this);
  }
}

abstract class _ProductDataModel implements ProductDataModel {
  factory _ProductDataModel(
      {int? id,
      String? title,
      double? price,
      String? description,
      String? category,
      String? image}) = _$_ProductDataModel;

  factory _ProductDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDataModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  double? get price;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$ProductDataModelCopyWith<_ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
