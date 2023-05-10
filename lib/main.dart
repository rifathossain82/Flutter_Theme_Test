import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_theme_test/src/core/theme/app_theme.dart';
import 'package:flutter_theme_test/src/core/theme/controller/theme_controller.dart';
import 'package:flutter_theme_test/src/core/utils/app_constants.dart';
import 'package:flutter_theme_test/src/features/home/view/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init();
  Get.put(ThemeController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: Get.find<ThemeController>().themeMode,
        home: const Homepage(),
      );
    });
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
