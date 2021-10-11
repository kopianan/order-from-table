import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:order_from_table/domain/product/i_product.dart';
import 'package:order_from_table/domain/product/product_data_model.dart';

@LazySingleton(as: IProduct)
class ProductRepository extends IProduct {
  ProductRepository(this.dio);
  final Dio dio;

  @override
  Future<Either<String, List<ProductDataModel>>> getAllProducts() async {
    Response response;
    try {
      response = await dio.get("https://fakestoreapi.com/products");
      List data = response.data;
      var _result = data.map((e) => ProductDataModel.fromJson(e)).toList();
      return right(_result);
    } catch (e) {
      return left(e.toString());
    }
  }
}
