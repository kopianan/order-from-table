import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:order_from_table/application/product/product_cubit.dart';
import 'package:order_from_table/injectable.dart';
import 'package:order_from_table/routes/routes.dart';

import 'dashboard/dashboard_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      getPages: Routes.getPages,
      initialRoute: DashboardPage.TAG,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xff3EB489,
          <int, Color>{
            50: const Color(0xff3EB489),
            100: const Color(0xff3EB489),
            200: const Color(0xff3EB489),
            300: const Color(0xff3EB489),
            400: const Color(0xff3EB489),
            500: const Color(0xff3EB489),
            600: const Color(0xff3EB489),
            700: const Color(0xff3EB489),
            800: const Color(0xff3EB489),
            900: const Color(0xff3EB489),
          },
        ),
      ),
    );
  }
}
