import 'package:get/get.dart';
import 'package:order_from_table/application/product/cart_product_data_model.dart';
import 'package:order_from_table/domain/product/product_data_model.dart';

class ProductController extends GetxController {
  RxList<ProductDataModel> _allProduct = <ProductDataModel>[].obs;
  RxList<CartProductDataModel> _cartProduct = <CartProductDataModel>[].obs;
  RxInt _tempQuantity = 1.obs;

  /*QUANTITY*/
  void setTempQty(int qty) {
    this._tempQuantity.value = qty;
  }

  void decreaseQty() {
    this._tempQuantity.value -= 1;
  }

  void increaseQty() {
    this._tempQuantity.value += 1;
  }

  int get getTempQty => this._tempQuantity.value;

  /*PRODUCT*/
  void setAllProduct(List<ProductDataModel> list) {
    this._allProduct.assignAll(list);
  }

  List<ProductDataModel> get getAllProduct => this._allProduct;

  /*CART PRODUCT*/
  void setAllCart(List<CartProductDataModel> list) {
    this._cartProduct.assignAll(list);
  }

  int getQuantityByItem(ProductDataModel item) {
    try {
      var _exist =
          _cartProduct.firstWhere((element) => element.product == item);
      return _exist.qty!;
    } catch (e) {
      return 1;
    }
  }

  void addItemToCart(ProductDataModel item, int quantity) {
    try {
      var _exist =
          this._cartProduct.firstWhere((element) => element.product == item);
      var index = this._cartProduct.indexOf(_exist);
      var _newData = _exist.copyWith(qty: quantity);

      this._cartProduct.removeAt(index);
      this._cartProduct.add(_newData);
    } catch (e) {
      this._cartProduct.add(CartProductDataModel(product: item, qty: quantity));
    }

    print(this._cartProduct);
  }

  List<CartProductDataModel> get getAllCartProduct => this._cartProduct;

  int calculateTotalItemOnCart() {
    var _total = 0;
    this._cartProduct.forEach((element) {
      _total += element.qty!;
    });
    return _total;
  }

  double calculateGrandTotal() {
    double total = 0.0;
    this._cartProduct.forEach((element) {
      var _qty = element.qty;
      var _item = element.product;

      total += _item!.price! * _qty!;
    });
    return total;
  }

  bool isCartEmpty() {
    if (this._cartProduct.length == 0) {
      return false;
    }
    return true;
  }
}
