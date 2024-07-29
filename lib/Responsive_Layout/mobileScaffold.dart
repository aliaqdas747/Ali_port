import 'package:Ali.dev/Screens/about.dart';
import 'package:Ali.dev/Screens/contact_screen.dart';
import 'package:Ali.dev/Screens/project_Screen.dart';
import 'package:Ali.dev/utils.dart';
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
      backgroundColor: Colors.grey,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [HomeScreen(), AboutScreen(), ProjectsScreen(), SkillsPage()],
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
            icon: Icon(Icons.code_outlined),
            label: 'Skills',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.green,
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                style: TextStyle(fontSize: 25),
              )),
              Center(
                  child: Text(
                'Flutter App Developer',
                style: TextStyle(
                    color: Colors.green,
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
              AwesomeIconsRow(),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProjectsScreen()));
                        },
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
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
