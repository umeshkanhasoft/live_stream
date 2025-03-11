import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_kit/app_routes.dart';
import 'package:live_kit/initial_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Kit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: getPages,
      initialRoute: AppRoutes.splashPage,
      initialBinding: InitialBinding(),
    );
  }
}
