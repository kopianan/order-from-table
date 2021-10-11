import 'package:dartz/dartz.dart';
import 'package:order_from_table/domain/product/product_data_model.dart';

abstract class IProduct {
  Future<Either<String, List<ProductDataModel>>> getAllProducts();
}
