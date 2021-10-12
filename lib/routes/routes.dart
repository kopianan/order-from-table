import 'package:get/get.dart';
import 'package:order_from_table/application/binding/product_binding.dart';
import 'package:order_from_table/presentation/check_out/checkout_page.dart';
import 'package:order_from_table/presentation/dashboard/dashboard_page.dart';

class Routes {
  static List<GetPage> _pages = [
    GetPage(
        name: DashboardPage.TAG,
        page: () => DashboardPage(),
        binding: ProductBinding()),
    GetPage(
        name: CheckoutPage.TAG,
        page: () => CheckoutPage(),
        binding: ProductBinding())
  ];

  static List<GetPage> get getPages => _pages;
}
