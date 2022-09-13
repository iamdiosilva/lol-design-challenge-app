import 'package:flutter/material.dart';

import '../../common_widgets/end_drawer.dart/custom_end_drawer.dart';
import '../../core/theme/app_icons.dart';
import '../../repositories/common_repository.dart';
import 'component/header_component.dart';
import 'component/slogan_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                child: SloganComponent(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Disponivel em todos os planos:',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 24)),
                    ),
                    const SizedBox(height: 16),
                    Text('FaleMais!',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: SizedBox(
                        height: 180,
                        child: ListView.builder(
                          itemCount:
                              CommonRepository.availableOnAllPlans.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 160,
                              child: Card(
                                elevation: 4,
                                color: Colors.white,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      CommonRepository
                                          .availableOnAllPlans[index]
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[700],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Image.asset(
                  AppIcons.logo,
                  width: 192,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
