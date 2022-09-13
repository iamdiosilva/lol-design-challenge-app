import 'package:flutter/material.dart';

import '../../common_widgets/end_drawer.dart/custom_end_drawer.dart';
import '../home_page/component/header_component.dart';
import 'components/info_component.dart';

class TransparencyPage extends StatelessWidget {
  const TransparencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      endDrawer: const CustomEndDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const HeaderComponent(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: InfoComponent(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(
                  'Calculos de tarifas',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Calcule quanto você vai gastar*',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
