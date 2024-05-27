import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                width: 450,
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
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ),

                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'ALI AQDAS',
                        style:textTheme.textStyle!.copyWith(fontSize: 35)
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'PORTFOLIO',
                          style: textTheme.headerStyle!.copyWith(fontSize: 40)
                      ),
                    ),

                    Text(
                        "Flutter Developer",
                        style: textTheme.textStyle!.copyWith(fontSize: 30)
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 15,
              child: Container(

                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/b.png"),
                      fit: BoxFit.cover,
                    )
                ),


                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutScreen()));
                              },
                              child: Text('About',style: textTheme.textStyle!.copyWith(fontSize: 25))),
                          const SizedBox(width: 30,),
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SkillsPage()));
                              },
                              child: Text('Skills',style: textTheme.textStyle!.copyWith(fontSize: 25))),
                          const SizedBox(width: 30,),
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProjectsScreen()));
                              },
                              child: Text('Projects',style: textTheme.textStyle!.copyWith(fontSize: 25))),
                          const SizedBox(width: 30,),
                        ],
                      ),
                      Image.asset(
                        'assets/images/alia.png',
                        height: 400,
                        width: 400,
                      ),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                            'I’m Ali Aqdas, a Flutter developer with experience in building cross-platform apps. My focus is on creating functional and visually appealing applications. Let’s work together to bring your ideas to life.',
                            textAlign: TextAlign.center,
                            style: textTheme.textStyle!.copyWith(fontSize: 20)
                        ),
                      ),
                      Container(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(

                              margin: EdgeInsets.all(20),
                              child: const Center(child:  Text('Download CV',
                                style:  TextStyle(
                                  fontFamily: 'prata',
                                  fontSize: 15,
                                  color: Colors.black,


                                  fontWeight: FontWeight.w900,
                                ),),),
                              height: 50,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.amber,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3)
                                  )
                                ]
                            ),),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Contact_screen()));


                              },
                              child: Container(

                                child: Center(child: Text('Contact Me',  style:  TextStyle(
                                  fontFamily: 'prata',
                                  fontSize: 15,
                                  color: Colors.black,


                                  fontWeight: FontWeight.w900,
                                ),),), height: 50,width: 200,decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius:5,
                                        spreadRadius: 3,
                                        offset: const Offset(0, 3)
                                    )
                                  ],
                                  borderRadius:BorderRadius.circular(50),
                                  border: Border.all(width: 5,color: Colors.amber,)),),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
