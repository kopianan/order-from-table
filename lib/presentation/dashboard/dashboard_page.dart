import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:order_from_table/application/product/product_controller.dart';
import 'package:order_from_table/application/product/product_cubit.dart';
import 'package:order_from_table/domain/product/product_data_model.dart';
import 'package:order_from_table/presentation/check_out/checkout_page.dart';
import 'package:order_from_table/presentation/widget/spinner_widget.dart';

import '../../injectable.dart';

class DashboardPage extends StatefulWidget {
  static const String TAG = '/dashboard-page';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GFBottomSheetController controller = GFBottomSheetController();
  final _productController = Get.find<ProductController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>()..getAllProduct(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            Obx(() => GFIconBadge(
                  counterChild:
                      (_productController.calculateTotalItemOnCart() == 0)
                          ? SizedBox()
                          : GFBadge(
                              text: _productController
                                  .calculateTotalItemOnCart()
                                  .toString(),
                              shape: GFBadgeShape.circle,
                              size: 30,
                            ),
                  child: Icon(Icons.shop),
                  position: GFBadgePosition.topEnd(top: 5, end: -6),
                ))
          ],
        ),
        body: BlocConsumer<ProductCubit, ProductState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onGetAllProduct: (e) {
                print(e);
                e.product!.fold(
                  () => {},
                  (a) => a.fold(
                    (l) => {},
                    (r) {
                      _productController.setAllProduct(r);
                    },
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return Stack(
              fit: StackFit.passthrough,
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: _productController.getAllProduct.length,
                            itemBuilder: (context, index) {
                              var _single =
                                  _productController.getAllProduct[index];

                              return GFCard(
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 10),
                                padding: EdgeInsets.zero,
                                content: GFListTile(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.only(
                                      top: 0, left: 0, bottom: 0, right: 10),
                                  avatar: GFAvatar(
                                    radius: 35,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(5)),
                                    shape: GFAvatarShape.square,
                                    backgroundImage: CachedNetworkImageProvider(
                                      _single.image!,
                                      errorListener: () {
                                        print("ERROR");
                                      },
                                    ),
                                  ),
                                  title: Text(_single.title!),
                                  subTitleText: _single.price!.toString(),
                                  icon: Obx(() => GFButtonBadge(
                                        onPressed: () async {
                                          //show bottom sheet
                                          await showProductDetail(_single);
                                        },
                                        text: "+ Pesan",
                                        icon: checkBadges(_single),
                                        position: GFPosition.end,
                                        type: GFButtonType.outline,
                                      )),
                                ),
                              );
                            }),
                      ),
                    ),
                    Obx(
                      () => Visibility(
                        visible: _productController.isCartEmpty(),
                        child: SizedBox(height: 105),
                      ),
                    )
                  ],
                ),
                Obx(
                  () => Visibility(
                    visible: _productController.isCartEmpty(),
                    child: Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(CheckoutPage.TAG);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey[400]!,
                                  spreadRadius: 3,
                                  offset: Offset(3, -2))
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$" +
                                        _productController
                                            .calculateGrandTotal()
                                            .toStringAsFixed(2),
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("Sebelum pajak")
                                ],
                              ),
                              GFButton(
                                text: "PESAN",
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                position: GFPosition.end,
                                color: Colors.pinkAccent,
                                icon: Icon(
                                  Icons.shop,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Widget? checkBadges(ProductDataModel currItem) {
    try {
      var _exist = _productController.getAllCartProduct
          .firstWhere((element) => element.product!.id == currItem.id);

      return GFBadge(
        child: Text(_exist.qty.toString()),
        shape: GFBadgeShape.standard,
        color: Colors.red,
      );
    } catch (e) {
      return null;
    }
  }

  Future<void> showProductDetail(ProductDataModel product) async {
    var _qty = _productController.getQuantityByItem(product);
    _productController.setTempQty(_qty);

    await Get.bottomSheet(
      Container(
        padding: EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        constraints: BoxConstraints(
          maxHeight: Get.size.height - 50,
          minHeight: Get.size.height / 4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: AspectRatio(
                      aspectRatio: 1, child: Image.network(product.image!)),
                ),
                SizedBox(width: 8),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.title!,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(product.description!),
                    ],
                  ),
                ),
              ],
            ),
            Divider(thickness: 1),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Obx(
                  () => SpinnerWidget(
                    decrease: () {
                      print("Decrease");
                      if (_qty <= 1) {
                        _qty = 1;
                      } else {
                        _qty -= 1;
                        _productController.decreaseQty();
                      }
                    },
                    increase: () {
                      _productController.increaseQty();
                    },
                    total: _productController.getTempQty.toString(),
                  ),
                )
                // Row(
                //   children: [
                //     GFIconButton(
                //       onPressed: () {
                //         setState(() {
                //           if (_qty <= 1) {
                //             _qty = 1;
                //           } else {
                //             _qty -= 1;
                //             _productController.decreaseQty();
                //           }
                //         });
                //       },
                //       size: 12,
                //       padding: EdgeInsets.all(5),
                //       icon: Icon(Icons.remove),
                //     ),
                //     Obx(() => Container(
                //         padding: EdgeInsets.symmetric(horizontal: 8),
                //         child: Text(
                //           _productController.getTempQty.toString(),
                //           style: TextStyle(fontSize: 17),
                //         ))),
                //     GFIconButton(
                //       onPressed: () {
                //         _productController.increaseQty();
                //       },
                //       size: 12,
                //       padding: EdgeInsets.all(5),
                //       icon: Icon(Icons.add),
                //     ),
                //   ],
                // ),
                ,
                SizedBox(width: 12),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Rp.300.000",
                        style: TextStyle(fontSize: 17),
                      ),
                      GFButton(
                        onPressed: () async {
                          _productController.addItemToCart(
                              product, _productController.getTempQty);
                          Get.back();
                        },
                        text: "Pesan",
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
