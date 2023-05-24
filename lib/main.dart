import 'package:example_api_getx_isar/routes/app_pages.dart';
import 'package:example_api_getx_isar/routes/app_routes.dart';
import 'package:example_api_getx_isar/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      theme: Apptheme.light,
      darkTheme: Apptheme.light,
      themeMode: ThemeMode.system,
    );
  }
}
