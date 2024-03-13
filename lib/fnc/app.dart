import 'package:flutter/material.dart';
import 'package:belov_dmitry_sergeevich/UI/homep.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: const Profile(title: 'Если увидите этого человека звоните 911',),
    );
  }
}
