import 'dart:ui';

import 'package:Ali.dev/Responsive_Layout/responisive_layout.dart';
import 'package:Ali.dev/Screens/Skills_screen.dart';
import 'package:Ali.dev/Screens/about.dart';
import 'package:Ali.dev/Screens/project_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom_appbar extends StatefulWidget {
  const Custom_appbar({super.key});

  @override
  State<Custom_appbar> createState() => _Custom_appbarState();
}

class _Custom_appbarState extends State<Custom_appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),

        color: Colors.white.withOpacity(0.0), // Very low opacity
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            alignment: Alignment.centerRight,
            color: Colors.transparent, // Transparent background
            child: Wrap(
              alignment: WrapAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    } else {
                      // Handle the case where there is no previous route to pop to.
                      // For example, you can show a message or navigate to a default page.
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('No previous page to go back to.')),
                      );
                    }
                  },
                  child: Text(
                    '   Home',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'fonts'),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutScreen()));
                  },
                  child: Text(
                    '   About',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'fonts'),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProjectsScreen()));
                  },
                  child: Text(
                    '   Projects',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'fonts'),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SkillsPage()));
                  },
                  child: Text(
                    '   Skills',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'fonts'),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
