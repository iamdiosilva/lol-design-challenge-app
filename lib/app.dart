import 'package:desafio_loldesign/core/app/settings/app_scroll_behavior.dart';
import 'package:flutter/material.dart';

import 'views/plans_page/plans_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      home: PlansPage(),
    );
  }
}
