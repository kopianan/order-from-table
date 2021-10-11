// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/product/product_cubit.dart' as _i6;
import 'domain/product/i_product.dart' as _i4;
import 'infrastructure/core/dio_injection_module.dart' as _i7;
import 'infrastructure/product/product_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectionModule = _$DioInjectionModule();
  gh.factory<_i3.Dio>(() => dioInjectionModule.dio);
  gh.lazySingleton<_i4.IProduct>(() => _i5.ProductRepository(get<_i3.Dio>()));
  gh.factory<_i6.ProductCubit>(() => _i6.ProductCubit(get<_i4.IProduct>()));
  return get;
}

class _$DioInjectionModule extends _i7.DioInjectionModule {}
