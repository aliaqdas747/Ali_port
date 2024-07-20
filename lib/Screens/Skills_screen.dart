
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Themes/text_theme.dart';
import '../coustom_widgets/widgets_costum.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = TextThemeCustom();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:const Text('Flutter Skills Set'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            // Ensure the container takes full width
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                Container(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Flutter App Development",style: textTheme.subHeaderStyle,),
                        Text("I utilize Flutter, a versatile framework, to develop high-performance, cross-platform applications from a single codebase. This allows me to create seamless user experiences and efficient applications for various platforms.",style: textTheme.textStyle,),
                     SizedBox(height: 20,),
                        Text("Types of Applications I Can Develop:",style: textTheme.textStyle,),
                        Text("1. Android Applications\n2. iOS Applications\n3. Windows Software\n4. macOS Software\n5. Websites/Web Applications",style: textTheme.textStyle,),
                      ],
                    ),
                  ),
                  margin:const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tools and Technologies:",style: textTheme.subHeaderStyle,),
                            Text("1. Flutter     2. Dart\n3. Firebase     4. SQLite\n5. Provider     6. GetX\n7. Bloc     8. Git & GitHub\n9. VS Code & Android Studio\n10. Postman Rest API JSON\n11. Adobe XD & Figma",style: textTheme.textStyle,),

                          ],
                        ),
                      ),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Project Highlights:",style: textTheme.subHeaderStyle,),
                        Container(
                          width: 400,
                          height: 190,

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                             child: Center(child: Text("Ecommerce App",style: TextStyle(fontSize: 30,color: Colors.amber),))
                          ),
                          margin:const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/ecommerce.png'),
                              fit: BoxFit.cover
                            ),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        Container(
                          width: 400,
                          height: 200,

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(child: Text("Weather App",style: TextStyle(fontSize: 30,color: Colors.white),))
                          ),
                          margin:const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/weather.png'),
                                  fit: BoxFit.cover
                              ),
                              color: Colors.amber.shade900,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 450,
                  child: Column(
                    children: [
                      const  SkillProgress(
                        skill: 'Flutter',
                        percentage: 0.9,
                        image: 'assets/images/flutter1.png',
                      ),
                      const    SkillProgress(
                        skill: 'Dart',
                        percentage: 0.82,
                        image: 'assets/images/dart.png',
                      ),
                      const  SkillProgress(
                        skill: 'Firebase',
                        percentage: 0.7,
                        image: 'assets/images/firebase.png',
                      ),
                      const   SkillProgress(
                        skill: 'Sqlite',
                        percentage: 0.8,
                        image: 'assets/images/sqlite.png',
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}


