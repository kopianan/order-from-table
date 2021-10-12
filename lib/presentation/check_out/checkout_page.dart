import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:order_from_table/application/product/product_controller.dart';
import 'package:order_from_table/presentation/widget/spinner_widget.dart';

class CheckoutPage extends StatefulWidget {
  static const String TAG = '/checkout-page';
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _productCon = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              "Keranjang",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.symmetric(vertical: 10)),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              var _single = _productCon.getAllCartProduct[index];
              return Column(
                children: [
                  GFListTile(
                    avatar: null,
                    margin: EdgeInsets.zero,
                    title: Text(_single.product!.title!),
                    icon: Row(
                      children: [
                        Obx(
                          () => Text(_productCon
                              .calculateGrandTotal()
                              .toStringAsFixed(2)),
                        ),
                        SizedBox(width: 12),
                        SpinnerWidget(
                          decrease: () {},
                          increase: () {},
                          total: "1",
                        ),
                      ],
                    ),
                  ),
                  Divider()
                ],
              );
            }, childCount: _productCon.getAllCartProduct.length),
          ), 
          S
        ],
      ),
    );
  }
}
