import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Screens/Skills_screen.dart';
import '../Screens/about.dart';
import '../Screens/contact_screen.dart';
import '../Screens/project_Screen.dart';
import 'desktopScaffold.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}
class _MobileScaffoldState extends State<MobileScaffold> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.amber,
          size: 50,
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/alia.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Ali Aqdas',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'flutterdeveloper470@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.star),
                title: const Text(
                  'Skills',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SkillsPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text(
                  'Contact',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Contact_screen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text(
                  'About',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.work),
                title: const Text(
                  'Projects',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectsScreen()));
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/b.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, 50 * (1 - _opacityAnimation.value)),
                  child: Opacity(
                    opacity: _opacityAnimation.value,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                      width: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 3),
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ],
                        color: Colors.amber,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          'P\nO\nR\nT\nF\nO\nL\nI\nO',
                          style: TextStyle(fontSize: 45 * _scaleAnimation.value, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, 50 * (1 - _opacityAnimation.value)),
                  child: Opacity(
                    opacity: _opacityAnimation.value,
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.only(top: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/alia2.png',
                              width: 280 * _scaleAnimation.value,
                            ),
                            Text(
                              'Ali Aqdas',
                              style: textTheme.headerStyle!.copyWith(fontSize: 40,fontWeight: FontWeight.w500)
                            ),
                            Text(
                              'I’m Ali Aqdas,\na Flutter developer with experience in building cross-platform apps. My focus is on creating functional and visually appealing applications. Let’s work together to bring your ideas to life.',
                              style:textTheme.textStyle ,
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  child: InkWell(
                                    onTap:()=>launch('https://github.com/aliaqdas747'),

                                    child: Image.asset(
                                      'assets/images/git.png',
                                      height: 40 * _scaleAnimation.value,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: ()=>launch('https://www.linkedin.com/in/ali-aqdas-9a2ba8299/'),
                                  child: Image.asset(
                                    'assets/images/link.png',
                                    height: 40 * _scaleAnimation.value,
                                  ),
                                ),
                                InkWell(
                                  onTap: ()=>launch('https://www.instagram.com/ali_aqdas1/'),
                                  child: Image.asset(
                                    'assets/images/insta.png',
                                    height: 40 * _scaleAnimation.value,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
