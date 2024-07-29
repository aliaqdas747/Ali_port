import 'dart:html';
import 'dart:ui';

import 'package:Ali.dev/Screens/Skills_screen.dart';
import 'package:Ali.dev/Screens/about.dart';
import 'package:Ali.dev/Screens/contact_screen.dart';
import 'package:Ali.dev/Screens/project_Screen.dart';
import 'package:Ali.dev/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Import your additional screens

class TableScaffold extends StatefulWidget {
  const TableScaffold({super.key});

  @override
  State<TableScaffold> createState() => _TableScaffoldState();
}

class _TableScaffoldState extends State<TableScaffold> {
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
                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),

                    color: Colors.white.withOpacity(0.0), // Very low opacity
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        color: Colors.transparent, // Transparent background
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutScreen()));
                              },
                              child: Text(
                                '   About',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontFamily: 'fonts'),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProjectsScreen()));
                              },
                              child: Text(
                                '   Projects',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontFamily: 'fonts'),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SkillsPage()));
                              },
                              child: Text(
                                '   Skills',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontFamily: 'fonts'),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/ai.png'),
                  ),
                ),
                Center(
                    child: Text(
                  'Ali Aqdas',
                  style: TextStyle(fontSize: 30),
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
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            'Projects',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('1+ years',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            'Experience',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Flutter',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            'Skills',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AwesomeIconsRow(),
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
