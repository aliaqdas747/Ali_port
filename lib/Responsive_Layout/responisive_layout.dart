import 'package:flutter/material.dart';

class responsive_Layout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget desktopScaffold;

  const responsive_Layout({super.key,
    required this.mobileScaffold,
    required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constrant){
      if(constrant.maxWidth<500){
        return mobileScaffold;
      }else{
        return desktopScaffold;
      }
    });
  }
}
