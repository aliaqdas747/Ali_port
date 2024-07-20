import 'package:flutter/material.dart';


class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectCard(
                title: 'E-commerce App',
                description: 'Developed a full-featured e-commerce application with Flutter, supporting user authentication, product browsing, and secure payments.',
                imagePath: 'assets/images/ecommerce.png',
              ),
              const  SizedBox(height: 16),
              ProjectCard(
                title: 'Weather App',
                description: 'Created a weather forecasting app using Flutter and OpenWeatherMap API. Displays current weather conditions and forecasts for different cities.',
                imagePath: 'assets/images/weather.png',
              ),
              const  SizedBox(height: 16),
              ProjectCard(
                title: 'Social Media App',
                description: 'Built a social media application with Flutter, allowing users to create profiles, post updates, and interact with others in real-time.',
                imagePath: 'assets/images/social.png',
              ),
              const  SizedBox(height: 16),
              ProjectCard(
                title: 'To-Do List App',
                description: 'Developed a task management app with Flutter. Features include adding, deleting, and marking tasks as complete, with a user-friendly interface.',
                imagePath: 'assets/images/toDo.png',
              ),
              const      SizedBox(height: 16),
              ProjectCard(
                title: 'Portfolio Website',
                description: 'Designed and developed a personal portfolio website using Flutter Web to showcase my projects, skills, and experience.',
                imagePath: 'assets/images/port.png',
              ),
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
  final String imagePath;

  ProjectCard(
      {
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset:const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const  SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const   SizedBox(height: 8),
                Text(
                  description,
                  style:const TextStyle(
                    fontSize: 16,
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
