import 'package:flutter/material.dart';
import 'package:khal971_zidney_course_webapp/views/dashboard/buildDesktopLayout.dart';
import 'package:khal971_zidney_course_webapp/views/dashboard/buildMobileLayout.dart';
import 'package:khal971_zidney_course_webapp/views/dashboard/buildTabletLayout.dart';


class ResponsiveScreen1 extends StatelessWidget {
  const ResponsiveScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1200) {
            return BuildDesktopLayout();
          } else if (constraints.maxWidth >= 768) {
            return Buildtabletlayout();
          } else {
            return Buildmobilelayout();
          }
        },
      ),
    );
  }
}