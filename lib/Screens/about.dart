import 'package:ali_aqdas/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Themes/text_theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override

  Widget build(BuildContext context) {
    final textTheme = TextThemeCustom();
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('About',style: textTheme.subHeaderStyle,),
      ),
      backgroundColor: Colors.white,

      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage('assets/images/b.png'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/images/my_img.png',height: 310,),
                    ),

                    Container(
                      margin: EdgeInsets.only( left: 100,right: 10,top: 10,bottom: 10),

                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("I am",style: textTheme.textStyle!.copyWith(fontSize: 30),),
                          Text('ALI AQDAS',style: textTheme.headerStyle!.copyWith(fontWeight: FontWeight.w500),),
                          Text("I am a dedicated and passionate app developer specializing in Flutter and Dart. With a solid foundation in app development from my recent diploma, I am excited to bring my skills and creativity to new projects. I am driven by a love for coding and a commitment to continuous learning and improvement.",style: textTheme.textStyle!.copyWith(fontSize: 20),),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 100,),
                Divider(height: 5,),
                SizedBox(height: 100,),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [


                    Container(
                      margin: EdgeInsets.only( left: 10,right: 100,top: 10,bottom: 10),

                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Skills',style: textTheme.headerStyle!.copyWith(fontWeight: FontWeight.w500),),
                          Text("Programming Languages: Dart, JavaScript Frameworks & Tools: Flutter, Git, Firebase Skills: UI/UX Design, Problem Solving, Team Collaboration",style: textTheme.textStyle!.copyWith(fontSize: 20),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/images/skill.png',height: 310,),
                    ),



                  ],
                ),
                SizedBox(height: 100,),
                Divider(height: 5,),
                SizedBox(height: 100,),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/images/edu.png',height: 500,),
                    ),

                    Container(
                      margin: EdgeInsets.only( left: 100,right: 10,top: 10,bottom: 10),

                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Education',style: textTheme.headerStyle!.copyWith(fontWeight: FontWeight.w500),),
                       Text('Intermediate in Computer Science (ICS)\nRead Foundation collage\n2021 - 2023\nCompleted my ICS with a strong focus on software development and programming fundamentals.Courses included Computer Science, Mathematics, and Physics.',style: textTheme.textStyle,),
                          Text('Diploma in App Development\nGCT Tevta Mirpur\n2023 Completed an intensive app development course focusing on Flutter and Dart.Developed several projects, showcasing proficiency in mobile app development and user-centered design.',style: textTheme.textStyle!.copyWith(fontWeight: FontWeight.w900),),
                        ],

                      ),
                    ),

                  ],
                ),
                SizedBox(height: 100,),
                Divider(height: 5,),
                SizedBox(height: 100,),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [


                    Container(
                      margin: EdgeInsets.only( left: 10,right: 100,top: 10,bottom: 10),

                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Hobbies & Interests',style: textTheme.headerStyle!.copyWith(fontWeight: FontWeight.w500),),
                          Text("Programming:\n Enjoy coding and building new projects.\nReading: Passionate about reading tech blogs and staying updated with the latest in technology.\nGaming:"
                              "\n Love playing strategy and puzzle games.",style: textTheme.textStyle!.copyWith(fontSize: 20),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [


                          Image.asset('assets/images/game.png',height: 330,),
                        ],
                      ),
                    ),



                  ],
                ),
                SizedBox(height: 100,),
                Divider(height: 5,),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.grey.shade700,

                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Contact', style: textTheme.subHeaderStyle!.copyWith(fontWeight: FontWeight.w900),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.email, color: Colors.blue),
                                  SizedBox(width: 10),
                                  Text("aliaqdas747@gmail.com", style: textTheme.textStyle!.copyWith(fontSize: 20),),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.phone, color: Colors.green),
                                  SizedBox(width: 10),
                                  Text("(+92)03136033747", style: textTheme.textStyle!.copyWith(fontSize: 20),),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.link, color: Colors.blue),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () {
                                      // Add your LinkedIn URL here
                                    },
                                    child: Text(
                                      "LinkedIn Profile",
                                      style: textTheme.textStyle!.copyWith(fontSize: 20, color: Colors.blue, decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.code, color: Colors.black),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () {
                                      // Add your GitHub URL here
                                    },
                                    child: Text(
                                      "GitHub Profile",
                                      style: textTheme.textStyle!.copyWith(fontSize: 20, color: Colors.blue, decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(height: 10,),
                Text('© 2024 Ali Aqdas. All Rights Reserved.', style: textTheme.textStyle!.copyWith(fontSize: 16, color: Colors.grey)),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
