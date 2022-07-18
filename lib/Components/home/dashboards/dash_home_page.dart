import 'package:animated_container/components/home/dashboards/dash_page.dart';

import 'package:flutter/material.dart';

class DashHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: PageView(
            children: [
              DashPage(),
            ],
          ),
        ),
      );
}
