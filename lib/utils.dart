import 'dart:ui';

import 'package:Ali.dev/Screens/project_Screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String image;

  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCarState();
}

class _ProjectCarState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      color: Colors.amber.shade800,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.image,
              height: 250,
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle view details
                    },
                    style: ElevatedButton.styleFrom(),
                    child: Text(
                      'View Code',
                      style: TextStyle(color: Colors.amber.shade700),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

////home home
class ProjectCard_s extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  const ProjectCard_s(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  State<ProjectCard_s> createState() => _ProjectCard_sState();
}

class _ProjectCard_sState extends State<ProjectCard_s> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),

          color: Colors.white.withOpacity(0.0), // Very low opacity
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: SizedBox(
                height: 400,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.image,
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.description,
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProjectsScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            child: Text(
                              'View Code',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}

class AwesomeIconsRow extends StatefulWidget {
  @override
  _AwesomeIconsRowState createState() => _AwesomeIconsRowState();
}

class _AwesomeIconsRowState extends State<AwesomeIconsRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {}, // Add your tap handler here
              child: Tooltip(
                message: 'Facebook',
                child: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.green,
                  size: 24,
                ),
              ),
              hoverColor: Colors.green),
          InkWell(
            onTap: () {}, // Add your tap handler here
            child: Tooltip(
              message: 'Instagram',
              child: Icon(
                FontAwesomeIcons.instagram,
                color: Colors.green,
                size: 24,
              ),
            ),
            hoverColor: Colors.green,
          ),
          InkWell(
            onTap: () {}, // Add your tap handler here
            child: Tooltip(
              message: 'Github',
              child: Icon(
                FontAwesomeIcons.github,
                color: Colors.green,
                size: 24,
              ),
            ),
            hoverColor: Colors.green,
          ),
          InkWell(
            onTap: () {}, // Add your tap handler here
            child: Tooltip(
              message: 'Linkedin',
              child: Icon(
                FontAwesomeIcons.linkedin,
                color: Colors.green,
                size: 24,
              ),
            ),
            hoverColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
