import 'package:Ali.dev/Responsive_Layout/tabletScaffold.dart';
import 'package:flutter/material.dart';

class responsive_Layout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget desktopScaffold;
  final Widget tabletScaffold;

  const responsive_Layout(
      {super.key,
      required this.mobileScaffold,
      required this.desktopScaffold,
      required this.tabletScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrant) {
      if (constrant.maxWidth < 500) {
        return mobileScaffold;
      } else if (constrant.maxWidth < 1100) {
        return TableScaffold();
      } else {
        return desktopScaffold;
      }
    });
  }
}
