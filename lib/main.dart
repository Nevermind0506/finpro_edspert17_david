import 'package:finpro_edspert17_david/presentation/router/pages.dart';
import 'package:finpro_edspert17_david/presentation/router/routes.dart';
import 'package:finpro_edspert17_david/presentation/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: Pages.getAllPages,
      initialRoute: Routes.splashScreen,
    );
  }
}
