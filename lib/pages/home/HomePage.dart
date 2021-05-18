import 'package:flutter/material.dart';
import 'package:responsivo_app/breakpoints.dart';
import 'package:responsivo_app/pages/home/widgets/Sections/AdvantageSection.dart';
import 'package:responsivo_app/pages/home/widgets/Sections/CoursesSection.dart';
import 'package:responsivo_app/pages/home/widgets/Sections/TopSection.dart';
import 'package:responsivo_app/pages/home/widgets/appBar/MobileAppBar.dart';
import 'package:responsivo_app/pages/home/widgets/appBar/WebAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakPoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
                ),
          drawer: constraints.maxWidth < mobileBreakPoint ? Drawer() : null,
          backgroundColor: Colors.black,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1400,
              ),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantageSection(),
                  CoursesSection()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
