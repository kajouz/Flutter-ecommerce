import 'package:ecommerce1/core/constant/color.dart';
import 'package:ecommerce1/core/localization/changelocal.dart';
import 'package:ecommerce1/core/localization/translation.dart';
import 'package:ecommerce1/core/services/services.dart';
import 'package:ecommerce1/routes.dart';
import 'package:ecommerce1/test.dart';
import 'package:ecommerce1/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
      // home: const Test(),
      home: const Language(),
      routes: routes,
    );
  }
}
