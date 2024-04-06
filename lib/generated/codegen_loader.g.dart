// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';
import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "generation_question": "Сколько очков крутости заслуживает эта работа?",
  "profile_name": "ФИО",
  "phone": "Телефон",
  "address": "Адрес",
  "mail": "Почта",
};
static const Map<String,dynamic> en = {
  "generation_question": "How many cool points does this work deserve?",
  "profile_name": "Full name",
  "phone": "Phone number",
  "address": "Address",
  "mail": "Mail",
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "en": en};
}
