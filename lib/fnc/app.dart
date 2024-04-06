import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:belov_dmitry_sergeevich/UI/homep.dart';
import 'package:easy_localization/easy_localization.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: const Profile(title: 'WEBBER',),
    );
  }
}
