import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:belov_dmitry_sergeevich/fnc/app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:belov_dmitry_sergeevich/generated/codegen_loader.g.dart';


void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ru')],
          path: 'assets/translations/',
          fallbackLocale: Locale('en'),
          assetLoader: const CodegenLoader(),
          child: MyApp(),
      ),
  );
}
