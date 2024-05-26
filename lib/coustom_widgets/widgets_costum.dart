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
                    color: Colors.white,
                    width: 2
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: Colors.white,
                    width: 2
                )
            ),

            label: Text("$text1"),
          ),

        )

    );
  }
}
