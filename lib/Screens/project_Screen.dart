import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectsScreen> {
  List<Project> _projects = [
    Project(
      title: 'Ecommerce App',
      description:
          'A full-fledged ecommerce app with payment gateway integration',
      technologies: ['Flutter', 'Dart', 'Firebase'],
      imageUrl: 'assets/images/ecommerce.png',
      githubUrl: 'https://github.com/ecommerce-app',
      liveUrl: 'https://ecommerce-app.com',
    ),
    Project(
      title: 'Weather App',
      description: 'A weather app that shows current weather and forecast',
      technologies: ['Flutter', 'Dart', 'OpenWeatherMap'],
      imageUrl: 'assets/images/weather.png',
      githubUrl: 'https://github.com/weather-app',
      liveUrl: 'https://weather-app.com',
    ),
    Project(
      title: 'To-Do List App',
      description: 'A simple to-do list app with CRUD operations',
      technologies: ['Flutter', 'Dart', 'Hive'],
      imageUrl: 'assets/images/toDo.png',
      githubUrl: 'https://github.com/todo-list-app',
      liveUrl: 'https://todo-list-app.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Projects'),
        backgroundColor: Colors.grey.shade700,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: _projects.length,
          itemBuilder: (context, index) {
            return ProjectCard(project: _projects[index]);
          },
        ),
      ),
    );
  }
}

class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final String imageUrl;
  final String githubUrl;
  final String liveUrl;

  Project({
    required this.title,
    required this.description,
    required this.technologies,
    required this.imageUrl,
    required this.githubUrl,
    required this.liveUrl,
  });
}

class ProjectCard extends StatelessWidget {
  final Project project;

  ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade700,
      elevation: 4,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(project.imageUrl),
            ),
            SizedBox(height: 16),
            Text(
              project.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              project.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Wrap(
              children: project.technologies.map((tech) {
                return Chip(
                  label: Text(tech),
                  backgroundColor: Colors.amber.shade700,
                  labelStyle: TextStyle(color: Colors.white),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    launch(project.githubUrl);
                  },
                  child: Text('GitHub'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade700,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    launch(project.liveUrl);
                  },
                  child: Text('Live Demo'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
