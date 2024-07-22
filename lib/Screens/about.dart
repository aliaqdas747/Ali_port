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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.amber.shade700),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "About",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.amber.shade800),
        ),
      ),
      backgroundColor: Colors.grey.shade800,
      body: Container(
        decoration: const BoxDecoration(),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I am",
                            style: textTheme.textStyle!.copyWith(fontSize: 30),
                          ),
                          Text(
                            'ALI AQDAS',
                            style: textTheme.headerStyle!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.amber.shade800),
                          ),
                          Text(
                            "I am a dedicated and passionate app developer specializing in Flutter and Dart. With a solid foundation in app development from my recent diploma, I am excited to bring my skills and creativity to new projects. I am driven by a love for coding and a commitment to continuous learning and improvement.",
                            style: textTheme.textStyle!.copyWith(fontSize: 20),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Skills',
                            style: textTheme.headerStyle!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.amber.shade800),
                          ),
                          Text(
                            "Programming Languages: Dart, JavaScript Frameworks & Tools: Flutter, Git, Firebase Skills: UI/UX Design, Problem Solving, Team Collaboration",
                            style: textTheme.textStyle!.copyWith(fontSize: 20),
                          ),
                        ],
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Education',
                            style: textTheme.headerStyle!.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 45,
                                color: Colors.amber.shade800),
                          ),
                          Text(
                            'Intermediate in Computer Science (ICS)\nRead Foundation collage\n2021 - 2023\nCompleted my ICS with a strong focus on software development and programming fundamentals.Courses included Computer Science, Mathematics, and Physics.',
                            style: textTheme.textStyle,
                          ),
                          Text(
                            'Diploma in App Development\nGCT Tevta Mirpur\n2023 Completed an intensive app development course focusing on Flutter and Dart.Developed several projects, showcasing proficiency in mobile app development and user-centered design.',
                            style: textTheme.textStyle!
                                .copyWith(fontWeight: FontWeight.w900),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hobbies & Interests',
                            style: textTheme.headerStyle!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.amber.shade800),
                          ),
                          Text(
                            "Programming:\n Enjoy coding and building new projects.\nReading: Passionate about reading tech blogs and staying updated with the latest in technology.\nGaming:"
                            "\n Love playing strategy and puzzle games.",
                            style: textTheme.textStyle!.copyWith(fontSize: 20),
                          ),
                        ],
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
                  height: 5,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.grey.shade700,
                      width: double.infinity,
                      child: Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Contact',
                            style: textTheme.subHeaderStyle!
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.email, color: Colors.blue),
                                  const SizedBox(width: 10),
                                  Text(
                                    "aliaqdas747@gmail.com",
                                    style: textTheme.textStyle!
                                        .copyWith(fontSize: 20),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.phone, color: Colors.green),
                                  const SizedBox(width: 10),
                                  Text(
                                    "(+92)03136033747",
                                    style: textTheme.textStyle!
                                        .copyWith(fontSize: 20),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.link, color: Colors.blue),
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
                                        style: textTheme.textStyle!.copyWith(
                                            fontSize: 20,
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.code, color: Colors.black),
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
                                        style: textTheme.textStyle!.copyWith(
                                            fontSize: 20,
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text('© 2024 Ali Aqdas. All Rights Reserved.',
                                  style: textTheme.textStyle!.copyWith(
                                      fontSize: 16, color: Colors.grey)),
                            ],
                          ),
                        ],
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
