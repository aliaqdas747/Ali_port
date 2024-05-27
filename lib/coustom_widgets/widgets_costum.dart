import 'package:flutter/material.dart';

class Custom_container extends StatelessWidget {
  final Image? imgage;
  final String m_name;
  final String user_Name;


  const Custom_container({super.key,
    this.imgage,
    required this.m_name,
    required this.user_Name,

     });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [

        ],
      ),
    );
  }
}
class CustomTextField extends StatelessWidget {
  final String text1;
  final int? maxLines;
  final bool expand;
  final double? height;

  const CustomTextField({super.key,
    required this.text1,
     this.maxLines,
    required this.expand, required this.height
  });

  @override
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.all(5),
        width: 300,
        height: height,

        child: TextField(
          maxLines: maxLines,
          expands: expand,
          decoration: InputDecoration(

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.amber,
                    width: 2
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.amber,
                    width: 2
                )
            ),

            label: Text("$text1"),
          ),

        )

    );
  }
}
/////////////////////////////////////////////////
class SkillProgress extends StatelessWidget {
  final String skill;
  final double percentage;
  final String image;

  const SkillProgress({
    Key? key,
    required this.skill,
    required this.percentage,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 40, // Set the image width
                height: 40, // Set the image height
              ),
              SizedBox(width: 10), // Add some spacing between image and text
              Text(
                skill,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(
            value: percentage,
            backgroundColor: Colors.amber[100],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.amber[800]!),
          ),
          SizedBox(height: 8),
          Text(
            '${(percentage * 100).toInt()}%',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}