import 'package:ali_aqdas/Responsive_Layout/desktopScaffold.dart';
import 'package:ali_aqdas/Responsive_Layout/mobileScaffold.dart';
import 'package:ali_aqdas/Responsive_Layout/responisive_layout.dart';
import 'package:ali_aqdas/Themes/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/Skills_screen.dart';
import 'Screens/about.dart';
import 'Screens/contact_screen.dart';
import 'Screens/project_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Portfolio',

      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber,

        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: responsive_Layout(
        mobileScaffold: mobileScaffold( ),
        desktopScaffold: MyHomePage(title: '',),

      )
      //MyHomePage(title: 'Flutter Portfolio Home Page'),
    );
  }
}
