import 'package:Ali.dev/utils.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.amber.shade700),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "Project Showcase",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.amber),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProjectCard(
                  title: 'E-commerce App',
                  description:
                      'Created a complete Flutter e-commerce app with user authentication, product browsing, and secure payments.',
                  image: 'assets/images/ecommerce.png'),
              ProjectCard(
                  title: 'Social Media App',
                  description:
                      'Built a social media application with Flutter,allowing users to create profiles,interact with others in real-time.',
                  image: 'assets/images/social.png'),
              ProjectCard(
                  title: 'Weather App',
                  description:
                      'Developed Flutter weather utilizing the OpenWeatherMap API, showcasing current conditions and forecasts for multiple cities.',
                  image: 'assets/images/weather.png'),
              ProjectCard(
                  title: 'Todo App',
                  description:
                      'A task management app built with Flutter, allowing users to create, edit, and track their tasks with a simple and intuitive interface.',
                  image: 'assets/images/toDo.png'),
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(color: Colors.amber.shade800),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
