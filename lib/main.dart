import 'package:flutter/material.dart';
import 'package:flutter_getx_sqflite_crud_oparations/routes/app_routes.dart';
import 'package:flutter_getx_sqflite_crud_oparations/routes/routes.dart';
import 'package:get/get.dart';

import 'binding/app_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: AppRoutes.appRoutes,
      initialRoute: Routes.homePage,
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
