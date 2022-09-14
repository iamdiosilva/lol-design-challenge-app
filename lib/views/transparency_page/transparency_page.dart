import 'package:desafio_loldesign/models/plan.dart';
import 'package:desafio_loldesign/repositories/plans_repository.dart';
import 'package:desafio_loldesign/repositories/rates_repository.dart';
import 'package:desafio_loldesign/views/transparency_page/components/custom_dropdown_button_component.dart';
import 'package:desafio_loldesign/views/transparency_page/components/dropdown_button_plans.dart';
import 'package:desafio_loldesign/views/transparency_page/components/total_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/end_drawer.dart/custom_end_drawer.dart';
import '../../core/theme/app_icons.dart';
import '../../models/rate.dart';
import '../home_page/component/header_component.dart';
import 'components/info_component.dart';

class TransparencyPage extends StatefulWidget {
  const TransparencyPage({Key? key}) : super(key: key);

  @override
  State<TransparencyPage> createState() => _TransparencyPageState();
}

class _TransparencyPageState extends State<TransparencyPage> {
  int? dddOrigin;
  int? dddDestiny;
  Plan? plan;
  int minutes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      endDrawer: const CustomEndDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Consumer2<RatesRepository, PlansRepository>(
            builder: (context, ratesRepository, plansRepository, child) =>
                Column(
              children: [
                const HeaderComponent(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: InfoComponent(),
                ),
                Column(
                  children: [
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
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Column(
                        children: [
                          (plan == null)
                              ? Text(
                                  'Selecione seu plano',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              : Text(
                                  'Plano',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),
                          DropDownButtonPlan(
                              hint: 'Planos',
                              items: plansRepository.plans,
                              value: plan,
                              onChanged: (value) {
                                setState(() {
                                  plan = value;
                                });
                              }),
                          Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Column(
                                  children: [
                                    (dddOrigin == null)
                                        ? Text(
                                            'Selecione o DDD de origem',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[700]),
                                          )
                                        : Text(
                                            'Origem',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[700]),
                                          ),
                                    CustomDropDownButtonComponent(
                                        hint: 'DDD Origem',
                                        items: (plan == null)
                                            ? []
                                            : ratesRepository
                                                .dddOrigins()
                                                .toList(),
                                        value: dddOrigin,
                                        onChanged: (value) {
                                          setState(() {
                                            dddOrigin = value;
                                            dddDestiny = null;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 32),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Column(
                                  children: [
                                    (dddDestiny == null)
                                        ? Text(
                                            'Selecione o DDD de origem',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[700]),
                                          )
                                        : Text(
                                            'DDD de origem',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[700]),
                                          ),
                                    CustomDropDownButtonComponent(
                                        hint: 'Destino',
                                        items: (dddOrigin == null)
                                            ? []
                                            : ratesRepository
                                                .dddDestinies(dddOrigin!)
                                                .toList(),
                                        value: dddDestiny,
                                        onChanged: (value) {
                                          setState(() {
                                            dddDestiny = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Column(
                              children: [
                                (minutes == 0)
                                    ? Text(
                                        'Insera o tempo de ligação',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]),
                                      )
                                    : Text(
                                        'Minutos',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700]),
                                      ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: SizedBox(
                                      height: 200,
                                      width: 160,
                                      child: SpinBox(
                                          decoration: InputDecoration(
                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[700]!,
                                                  width: 2),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[700]!,
                                                  width: 2),
                                            ),
                                          ),
                                          textStyle: const TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                          enabled: (dddDestiny == null)
                                              ? false
                                              : true,
                                          direction: Axis.horizontal,
                                          min: 0,
                                          max: 999,
                                          value: minutes.toDouble(),
                                          onChanged: (value) => setState(() {
                                                minutes = value.toInt();
                                              }))),
                                ),
                              ],
                            ),
                          ),
                          TotalPanel(
                            minutes: minutes,
                            rate:
                                ratesRepository.getRate(dddOrigin, dddDestiny),
                            plan: plan,
                          ),
                        ],
                      ),
                    ),
                  ],
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
      ),
    );
  }
}
