import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamran_akbar_technical_test_app/views/homepage/homepage.dart';

import 'bindings/initializing_dependencies.dart';

void main() {
  runApp(const TechnicalTestApp());
}

class TechnicalTestApp extends StatelessWidget {
  const TechnicalTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Technical Test App',
      debugShowCheckedModeBanner: false,
      initialBinding: InitializingDependency(),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.amber))),
      home: const HomePage(),
    );
  }
}
