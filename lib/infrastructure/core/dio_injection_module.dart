import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectionModule {
   Dio get dio => Dio();
}
