
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Responsive_Layout/desktopScaffold.dart';
import 'Responsive_Layout/mobileScaffold.dart';
import 'Responsive_Layout/responisive_layout.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ali.dev',

      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber,

        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: responsive_Layout(
        mobileScaffold: MobileScaffold( ),
        desktopScaffold: MyHomePage(title: '',),

      )
      //MyHomePage(title: 'Flutter Portfolio Home Page'),
    );
  }
}
