import 'package:desafio_loldesign/core/app/settings/app_scroll_behavior.dart';
import 'package:flutter/material.dart';

import 'views/home_page/home_page.dart';
import 'views/plans_page/plans_page.dart';
import 'views/transparency_page/transparency_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/plans': (context) => const PlansPage(),
        '/transparency': (context) => const TransparencyPage(),
      },
    );
  }
}
