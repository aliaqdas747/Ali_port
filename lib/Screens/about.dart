import 'dart:ui';

import 'package:Ali.dev/coustom_widgets/Custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Themes/text_theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextThemeCustom();
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gif.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Custom_appbar(),
                const SizedBox(
                  height: 100,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        'assets/images/my_img.png',
                        height: 310,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 100, right: 10, top: 10, bottom: 10),
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color:
                            Colors.white.withOpacity(0.0), // Very low opacity
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "I am",
                                  style: textTheme.textStyle!.copyWith(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontFamily: 'fonts'),
                                ),
                                Text(
                                  'ALI AQDAS',
                                  style: textTheme.headerStyle!.copyWith(
                                    fontFamily: 'fonts',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green.shade300,
                                  ),
                                ),
                                Text(
                                  "I am a dedicated and passionate app developer specializing in Flutter and Dart. With a solid foundation in app development from my recent diploma, I am excited to bring my skills and creativity to new projects. I am driven by a love for coding and a commitment to continuous learning and improvement.",
                                  style: textTheme.textStyle!.copyWith(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'fonts'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                const Divider(
                  height: 5,
                ),
                const SizedBox(
                  height: 100,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 100, top: 10, bottom: 10),
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color:
                            Colors.white.withOpacity(0.0), // Very low opacity
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),

                        //
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Skills',
                                  style: textTheme.headerStyle!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'fonts',
                                    color: Colors.green.shade300,
                                  ),
                                ),
                                Text(
                                  "Programming Languages: Dart, JavaScript Frameworks & Tools: Flutter, Git, Firebase Skills: UI/UX Design, Problem Solving, Team Collaboration",
                                  style: textTheme.textStyle!.copyWith(
                                      fontSize: 20,
                                      fontFamily: 'fonts',
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        'assets/images/skill.png',
                        height: 310,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                const Divider(
                  height: 5,
                ),
                const SizedBox(
                  height: 100,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        'assets/images/edu.png',
                        height: 500,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 100, right: 10, top: 10, bottom: 10),
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color:
                            Colors.white.withOpacity(0.0), // Very low opacity
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Education',
                                  style: textTheme.headerStyle!.copyWith(
                                    fontFamily: 'fonts',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 45,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Intermediate in Computer Science (ICS)\nRead Foundation collage\n2021 - 2023\nCompleted my ICS with a strong focus on software development and programming fundamentals.Courses included Computer Science, Mathematics, and Physics.',
                                  style: textTheme.textStyle!.copyWith(
                                      fontFamily: 'fonts', color: Colors.white),
                                ),
                                Text(
                                  'Diploma in App Development\nGCT Tevta Mirpur\n2023 Completed an intensive app development course focusing on Flutter and Dart.Developed several projects, showcasing proficiency in mobile app development and user-centered design.',
                                  style: textTheme.textStyle!.copyWith(
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'fonts',
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                const Divider(
                  height: 5,
                ),
                const SizedBox(
                  height: 100,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 100, top: 10, bottom: 10),
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color:
                            Colors.white.withOpacity(0.0), // Very low opacity
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hobbies & Interests',
                                  style: textTheme.headerStyle!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontFamily: 'fonts',
                                  ),
                                ),
                                Text(
                                  "Programming:\n Enjoy coding and building new projects.\nReading: Passionate about reading tech blogs and staying updated with the latest in technology.\nGaming:"
                                  "\n Love playing strategy and puzzle games.",
                                  style: textTheme.textStyle!.copyWith(
                                      fontSize: 20,
                                      fontFamily: 'fonts',
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/game.png',
                            height: 330,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                const Divider(
                  height: 10,
                  color: Colors.green,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // boxShadow: [BoxShadow(color: Colors.green.shade300)],
                        border: Border.all(color: Colors.green),
                        color:
                            Colors.white.withOpacity(0.0), // Very low opacity
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Contact',
                                style: textTheme.subHeaderStyle!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'fonts'),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.email,
                                          color: Colors.blue),
                                      const SizedBox(width: 10),
                                      Text(
                                        "aliaqdas747@gmail.com",
                                        style: textTheme.textStyle!.copyWith(
                                            fontSize: 20, fontFamily: 'fonts'),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.phone,
                                          color: Colors.green),
                                      const SizedBox(width: 10),
                                      Text(
                                        "(+92)03136033747",
                                        style: textTheme.textStyle!.copyWith(
                                            fontSize: 20, fontFamily: 'fonts'),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.link,
                                          color: Colors.blue),
                                      const SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: () {
                                          // Add your LinkedIn URL here
                                        },
                                        child: InkWell(
                                          onTap: () => launch(
                                              'https://www.linkedin.com/in/ali-aqdas-9a2ba8299/'),
                                          child: Text(
                                            "LinkedIn Profile",
                                            style: textTheme.textStyle!
                                                .copyWith(
                                                    fontFamily: 'fonts',
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    decoration: TextDecoration
                                                        .underline),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.code,
                                          color: Colors.black),
                                      const SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: () {
                                          // Add your GitHub URL here
                                        },
                                        child: InkWell(
                                          onTap: () => launch(
                                              'https://github.com/aliaqdas747'),
                                          child: Text(
                                            "GitHub Profile",
                                            style: textTheme.textStyle!
                                                .copyWith(
                                                    fontFamily: 'fonts',
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    decoration: TextDecoration
                                                        .underline),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text('© 2024 Ali Aqdas. All Rights Reserved.',
                                      style: textTheme.textStyle!.copyWith(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontFamily: 'fonts')),
                                ],
                              ),
                            ],
                          ),
                        ),
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
  }
}
