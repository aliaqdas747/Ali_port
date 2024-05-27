import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Screens/Skills_screen.dart';
import '../Screens/about.dart';
import '../Screens/contact_screen.dart';
import '../Screens/project_Screen.dart';
import 'desktopScaffold.dart';

class mobileScaffold extends StatefulWidget {
  const mobileScaffold({super.key});

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.amber,
          size: 50
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
             color: Colors.white
          ),

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
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
                      style:textTheme.subHeaderStyle
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
                leading: Icon(Icons.star),
                title: Text('Skills',style: textTheme.subHeaderStyle,),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SkillsPage()));
                  // Handle navigation or any other action here
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact',style: textTheme.subHeaderStyle,),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact_screen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About',style: textTheme.subHeaderStyle,),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.work),
                title: Text('Projects',style: textTheme.subHeaderStyle,),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectsScreen()));
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
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/b.png"),
              fit: BoxFit.cover,
            )
        ),
        child: Row(

              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20,top: 10,bottom: 10),
              width: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 3),
                    blurRadius: 5,
                    spreadRadius: 3,
                  )
                ],
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              height: double.infinity,
              child: Center(
                child: Text(
                    'P\nO\nR\nT\nF\nO\nL\nI\nO',
                    style: textTheme.headerStyle!.copyWith(fontSize: 45)
                ),
              ),
            ),

            Container(
              width: 200,
              margin: EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/alia2.png',
                      width: 280,
                    ),
                    Text(
                        'Ali Aqdas',
                        style: textTheme.headerStyle!.copyWith(fontSize: 40,fontWeight: FontWeight.w500)
                    ),

                    Text(
                        'I’m Ali Aqdas,\na Flutter developer'
                            ' with experience in building cross-platform apps.'
                            ' My focus is on creating functional and visually '
                            'appealing applications. Let’s work together to '
                            'bring your ideas to life.',

                        style: textTheme.textStyle
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/git.png',height: 40,),
                        Image.asset('assets/images/link.png',height: 40,),
                        Image.asset('assets/images/insta.png',height: 40,),

                      ],
                    )

                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
