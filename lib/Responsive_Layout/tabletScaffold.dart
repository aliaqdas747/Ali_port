import 'dart:html';

import 'package:Ali.dev/Screens/Skills_screen.dart';
import 'package:Ali.dev/Screens/about.dart';
import 'package:Ali.dev/Screens/contact_screen.dart';
import 'package:Ali.dev/Screens/project_Screen.dart';
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
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/logo.png'),
          ),
        ),
        actions: [
          TextButton(
              style: ButtonStyle(),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));
              },
              child: Text(
                "About",
                style: TextStyle(
                    fontFamily: 'fonts',
                    color: Colors.amber.shade800,
                    fontSize: 25),
              )),
          SizedBox(
            width: 30,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SkillsPage()));
              },
              child: Text(
                "Skills",
                style: TextStyle(
                    color: Colors.amber.shade800,
                    fontSize: 25,
                    fontFamily: 'fonts'),
              )),
          SizedBox(
            width: 30,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProjectsScreen()));
              },
              child: Text(
                "Projects",
                style: TextStyle(
                    color: Colors.amber.shade800,
                    fontSize: 25,
                    fontFamily: 'fonts'),
              )),
          SizedBox(
            width: 40,
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: const CircleAvatar(
                  backgroundColor: Colors.orange,
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
                    color: Colors.amber.shade800,
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
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      "Projects",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProjectCard(
                        title: 'E-commerce App',
                        description:
                            'Created a complete Flutter e-commerce app with user authentication, product browsing, and secure payments.',
                        imageUrl: 'assets/images/ecommerce.png'),
                    ProjectCard(
                        title: 'Social Media App',
                        description:
                            'Built a social media application with Flutter,allowing users to create profiles,interact with others in real-time.',
                        imageUrl: 'assets/images/social.png'),
                    ProjectCard(
                        title: 'Weather App',
                        description:
                            'Developed Flutter weather utilizing the OpenWeatherMap API, showcasing current conditions and forecasts for multiple cities.',
                        imageUrl: 'assets/images/weather.png'),
                    ProjectCard(
                        title: 'Todo App',
                        description:
                            'A task management app built with Flutter, allowing users to create, edit, and track their tasks with a simple and intuitive interface.',
                        imageUrl: 'assets/images/todo.png'),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(color: Colors.amber.shade800),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 300,
      child: Card(
        color: Colors.grey.shade900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  color: Colors.amber.shade800,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Code",
                        style: TextStyle(color: Colors.amber.shade800),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
