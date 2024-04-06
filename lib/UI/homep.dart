import 'dart:math';
import 'package:belov_dmitry_sergeevich/generated/locale_keys.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';


class Profile extends StatefulWidget {
  const Profile({super.key, required this.title});

  final String title;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _randomNumber = 0;

  void _makeRandom() {
    setState(() {
      _randomNumber = (Random().nextInt(999)+300).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.language),
          onPressed: () {
            if (context.locale == Locale('ru')) {
              context.setLocale(Locale('en'));
            } else {
              context.setLocale(Locale('ru'));
            }
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/img/enjoyer.jpeg'),
            ),
            const SizedBox(height: 20),
            itemProfile(
                LocaleKeys.profile_name.tr(), 'Белов Дмитрий Сергеевич',
                CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile(
                LocaleKeys.phone.tr(), '123456789',
                CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile(
                LocaleKeys.address.tr(), 'abc 12',
                CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile(
                LocaleKeys.mail.tr(), 'ВаяЭтоЧеЗаМонстр@gmail.com',
                CupertinoIcons.mail),
            const SizedBox(height: 30,),
            Text(
              LocaleKeys.generation_question.tr(),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _makeRandom,
                  child: const Icon(
                    Icons.bolt,
                    color: Colors.black,
                    size: 24.0,
                    semanticLabel: 'skibidi',
                  ),
                ),
                Text(
                  '$_randomNumber',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 3),
              color: Colors.black12.withOpacity(.1),
              spreadRadius: 2,
              blurRadius: 10
          )
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}