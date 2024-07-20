import 'package:Ali.dev/Screens/about.dart';
import 'package:Ali.dev/Screens/contact_screen.dart';
import 'package:Ali.dev/Screens/project_Screen.dart';
import 'package:flutter/material.dart';

import '../Screens/Skills_screen.dart';

// Import your additional screens

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutBack,
    ));
    _controller.forward();
    _pageController = PageController();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomeScreen(),
          AboutScreen(),
          ProjectsScreen(),
          Contact_screen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 39, 36, 36),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber.shade800,
        backgroundColor: Colors.amber.shade600,
        unselectedItemColor: Colors.amber.shade500,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 36, 36),
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/logo.png'),
          ),
        ),
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
                style: TextStyle(fontSize: 25),
              )),
              Center(
                  child: Text(
                'Flutter App Developer',
                style: TextStyle(
                    color: Colors.amber.shade800,
                    fontSize: 30,
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
                        image: 'assets/images/todo.png'),
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
  final String image;

  ProjectCard({
    required this.title,
    required this.description,
    required this.image,
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
                  child: Image.asset(image)),
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

class ProjectCar extends StatefulWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ProjectCar({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<ProjectCar> createState() => _ProjectCarState();
}

class _ProjectCarState extends State<ProjectCar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber.shade500,
      child: SizedBox(
        width: 200,
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.imageUrl, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.description),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle view details
                },
                style: ElevatedButton.styleFrom(),
                child: Text(
                  'View Details',
                  style: TextStyle(color: Colors.amber.shade700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
