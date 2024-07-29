import 'dart:js';

import 'package:Ali.dev/Responsive_Layout/tabletScaffold.dart';
import 'package:Ali.dev/firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Responsive_Layout/desktopScaffold.dart';
import 'Responsive_Layout/mobileScaffold.dart';
import 'Responsive_Layout/responisive_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ali.dev',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          primaryColor: Colors.amber,
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        home: const responsive_Layout(
          mobileScaffold: MobileScaffold(),
          desktopScaffold: MyHomePage(
            title: 'Ali.dev',
          ),
          tabletScaffold: TableScaffold(),
        )
        //MyHomePage(title: 'Flutter Portfolio Home Page'),
        );
  }
}
