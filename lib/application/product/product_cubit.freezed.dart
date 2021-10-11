// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _OnGetAllProduct onGetAllProduct(
      {bool? isLoading,
      Option<Either<String, List<ProductDataModel>>>? product}) {
    return _OnGetAllProduct(
      isLoading: isLoading,
      product: product,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)
        onGetAllProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)?
        onGetAllProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)?
        onGetAllProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnGetAllProduct value) onGetAllProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnGetAllProduct value)? onGetAllProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnGetAllProduct value)? onGetAllProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)
        onGetAllProduct,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)?
        onGetAllProduct,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)?
        onGetAllProduct,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnGetAllProduct value) onGetAllProduct,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnGetAllProduct value)? onGetAllProduct,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnGetAllProduct value)? onGetAllProduct,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OnGetAllProductCopyWith<$Res> {
  factory _$OnGetAllProductCopyWith(
          _OnGetAllProduct value, $Res Function(_OnGetAllProduct) then) =
      __$OnGetAllProductCopyWithImpl<$Res>;
  $Res call(
      {bool? isLoading,
      Option<Either<String, List<ProductDataModel>>>? product});
}

/// @nodoc
class __$OnGetAllProductCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$OnGetAllProductCopyWith<$Res> {
  __$OnGetAllProductCopyWithImpl(
      _OnGetAllProduct _value, $Res Function(_OnGetAllProduct) _then)
      : super(_value, (v) => _then(v as _OnGetAllProduct));

  @override
  _OnGetAllProduct get _value => super._value as _OnGetAllProduct;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? product = freezed,
  }) {
    return _then(_OnGetAllProduct(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<ProductDataModel>>>?,
    ));
  }
}

/// @nodoc

class _$_OnGetAllProduct implements _OnGetAllProduct {
  const _$_OnGetAllProduct({this.isLoading, this.product});

  @override
  final bool? isLoading;
  @override
  final Option<Either<String, List<ProductDataModel>>>? product;

  @override
  String toString() {
    return 'ProductState.onGetAllProduct(isLoading: $isLoading, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnGetAllProduct &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, product);

  @JsonKey(ignore: true)
  @override
  _$OnGetAllProductCopyWith<_OnGetAllProduct> get copyWith =>
      __$OnGetAllProductCopyWithImpl<_OnGetAllProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)
        onGetAllProduct,
  }) {
    return onGetAllProduct(isLoading, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)?
        onGetAllProduct,
  }) {
    return onGetAllProduct?.call(isLoading, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isLoading,
            Option<Either<String, List<ProductDataModel>>>? product)?
        onGetAllProduct,
    required TResult orElse(),
  }) {
    if (onGetAllProduct != null) {
      return onGetAllProduct(isLoading, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnGetAllProduct value) onGetAllProduct,
  }) {
    return onGetAllProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnGetAllProduct value)? onGetAllProduct,
  }) {
    return onGetAllProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnGetAllProduct value)? onGetAllProduct,
    required TResult orElse(),
  }) {
    if (onGetAllProduct != null) {
      return onGetAllProduct(this);
    }
    return orElse();
  }
}

abstract class _OnGetAllProduct implements ProductState {
  const factory _OnGetAllProduct(
          {bool? isLoading,
          Option<Either<String, List<ProductDataModel>>>? product}) =
      _$_OnGetAllProduct;

  bool? get isLoading;
  Option<Either<String, List<ProductDataModel>>>? get product;
  @JsonKey(ignore: true)
  _$OnGetAllProductCopyWith<_OnGetAllProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
