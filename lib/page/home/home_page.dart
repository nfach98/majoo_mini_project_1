import 'package:flutter/material.dart';
import 'package:mini_project_1/page/detail/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraint) {
          if (constraint.maxWidth >= 480) {
            return LandscapeHomeView();
          } else {
            //   return PortraitHomeView();
            return DetailPage(
              title: 'DJI ',
            );
          }
        },
      ),
    );
  }
}

class LandscapeHomeView extends StatelessWidget {
  const LandscapeHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PortraitHomeView extends StatelessWidget {
  const PortraitHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
