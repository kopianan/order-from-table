import 'package:flutter/material.dart';
import 'package:order_from_table/presentation/app_widget.dart';

import 'injectable.dart';

void main() {
  configureDependencies();

  runApp(const AppWidget());
}
