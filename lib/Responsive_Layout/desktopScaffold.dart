import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
final textTheme =   TextThemeCustom();
Color about_Color = Colors.black;
Color skill_Color = Colors.black;
Color project_Color = Colors.black;
Color button_shadow =   Colors.grey.withOpacity(1);
Color button_shadow2 =   Colors.grey.withOpacity(1);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                margin:const EdgeInsets.only(right: 20),
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
                  borderRadius:const BorderRadius.only(
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

                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover,
                    )
                ),



                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  const  SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                about_Color = Colors.amber; // Change to the desired color on hover
                              });
                            },
                            onExit: (_){
                              setState(() {
                                about_Color= Colors.black;

                              });
                            },


                            child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutScreen()));
                                },
                                child: Text('About',style: textTheme.textStyle!.copyWith(fontSize: 25,color: about_Color))),
                          ),
                          const SizedBox(width: 30,),
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SkillsPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MouseRegion(
                                    onEnter: (_){
                                      setState(() {
                                        skill_Color= Colors.amber;


                                      });
                                    },
                                    onExit: (_){
                                      setState(() {
                                        skill_Color = Colors.black;

                                      });
                                    },
                                    child: Text('Skills',style: textTheme.textStyle!.copyWith(fontSize: 25,color: skill_Color))),
                              )),
                          const SizedBox(width: 30,),
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProjectsScreen()));
                              },
                              child: MouseRegion(
                                  onEnter: (_){
                                    setState(() {
                                      project_Color= Colors.amber;
                                    });
                                  },
                                  onExit: (_){
                                    setState(() {
                                      project_Color=Colors.black;
                                    });
                                  },
                                  child: Text('Projects',style: textTheme.textStyle!.copyWith(fontSize: 25,color: project_Color)))),
                          const SizedBox(width: 30,),
                        ],
                      ),
                      Image.asset(
                        'assets/images/alia.png',
                        height: 350,
                        width: 400,
                      ),
                      SizedBox(
                        height: 80,

                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const SizedBox(width: 20.0, height: 100.0),
                            DefaultTextStyle(
                              style: textTheme.subHeaderStyle!.copyWith(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.orange),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  RotateAnimatedText(
                                      "Let's Turn Your Ideas into Exceptional Projects!"),
                                  RotateAnimatedText('Transforming Visions into Reality!'),
                                  RotateAnimatedText('Crafting Innovative Solutions!'),
                                ],
                                onTap: () {
                                  // Handle onTap event here

                                },
                              ),
                            ),
                          ],
                        ),
                      ),


                      SizedBox(height: 80,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: DefaultTextStyle(
                            textAlign: TextAlign.end,
                            style:textTheme.textStyle,
                            child: AnimatedTextKit(
                              repeatForever: false,
                              totalRepeatCount: 1,
                              animatedTexts: [
                                TypewriterAnimatedText('I’m Ali Aqdas, a Flutter developer with experience in building cross-platform apps. My focus is on creating functional and visually appealing applications. Let’s work together to bring your ideas to life.'),

                              ],

                            ),
                          ),


                        ),
                      ),

                      Container(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              child:   MouseRegion(
                                onEnter: (_){
                                  setState(() {
                                    button_shadow2=   Colors.amberAccent.withOpacity(1);
                                  });
                                },
                                onExit: (_){
                                  setState(() {
                                    button_shadow2=    Colors.grey.withOpacity(1);
                                  });

                                },
                                child: Container(

                                  margin:const EdgeInsets.only(right: 20),
                                  child:  const Center(child:  Text('Download CV',
                                    style:  TextStyle(
                                      fontFamily: 'prata',
                                      fontSize: 15,
                                      color: Colors.black,


                                      fontWeight: FontWeight.w900,
                                    ),),),
                                  height: 50,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                          color: button_shadow2,
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: const Offset(0, 3)
                                      )
                                    ]
                                ),),
                              ),
                            ),

                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Contact_screen()));


                              },
                              child: MouseRegion(
                                onEnter: (_){
                                  setState(() {
                                    button_shadow=Colors.amber.withOpacity(1);

                                  });
                                },
                                onExit: (_){
                                  setState(() {
                                    button_shadow=   Colors.grey.withOpacity(1);
                                  });
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
                                          color:button_shadow,
                                          blurRadius:5,
                                          spreadRadius: 3,
                                          offset: const Offset(0, 3)
                                      )
                                    ],
                                    borderRadius:BorderRadius.circular(50),
                                    border: Border.all(width: 5,color: Colors.amber,)),),
                              ),
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
