import 'dart:ui';

import 'package:Ali.dev/Screens/ImagePage.dart';
import 'package:Ali.dev/coustom_widgets/Custom_appbar.dart';
import 'package:Ali.dev/utils.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Screens/Skills_screen.dart';
import '../Screens/about.dart';
import '../Screens/contact_screen.dart';
import '../Screens/project_Screen.dart';
import '../Themes/text_theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final textTheme = TextThemeCustom();
Color about_Color = Colors.black;
Color skill_Color = Colors.black;
Color project_Color = Colors.black;
Color button_shadow = Colors.grey.withOpacity(1);
Color button_shadow2 = Colors.grey.withOpacity(1);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'Send Message',
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Contact_screen()));
        },
        backgroundColor: Colors.green,
        child: Icon(
          Icons.message,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.grey.shade700,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //appbar
                Custom_appbar(),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ImagePage()));
                    },
                    child: Hero(
                      tag: 'Background',
                      child: const CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 100,
                        backgroundImage: AssetImage('assets/images/ai.png'),
                      ),
                    ),
                  ),
                ),
                Center(
                    child: Text(
                  'Ali Aqdas',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
                Center(
                    child: Text(
                  'Flutter App Developer',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'fonts'),
                )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('52+',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Projects',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('1+ years',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Experience',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Flutter',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Skills',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AwesomeIconsRow(),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        "Projects",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProjectCard_s(
                          title: 'E-commerce App',
                          description:
                              'Created a complete Flutter e-commerce app with user authentication, product browsing, and secure payments.',
                          image: 'assets/images/ecommerce.png'),
                      ProjectCard_s(
                          title: 'Social Media App',
                          description:
                              'Built a social media application with Flutter,allowing users to create profiles,interact with others in real-time.',
                          image: 'assets/images/social.png'),
                      ProjectCard_s(
                          title: 'Weather App',
                          description:
                              'Developed Flutter weather utilizing the OpenWeatherMap API, showcasing current conditions and forecasts for multiple cities.',
                          image: 'assets/images/weather.png'),
                      ProjectCard_s(
                          title: 'Todo App',
                          description:
                              'A task management app built with Flutter, allowing users to create, edit, and track their tasks with a simple and intuitive interface.',
                          image: 'assets/images/toDo.png'),
                      OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "View All",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
