import 'package:desafio_loldesign/controllers/format_controller.dart';
import 'package:flutter/material.dart';

import '../../../models/plan.dart';
import '../../../models/rate.dart';

class TotalPanel extends StatelessWidget {
  final Rate? rate;
  final int? minutes;
  final Plan? plan;
  const TotalPanel({Key? key, this.rate, this.minutes, this.plan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? totalWithoutPlan = calculateTotalWithoutPlan();
    double? totalWithPlan = calculateTotalWithPlan();
    return Column(children: [
      Wrap(
        children: [
          SizedBox(
            height: 140,
            width: 280,
            child: Card(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (plan != null)
                        ? 'Total com ${plan!.name}'
                        : 'Selecione um Plano',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('R\$  ',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey[700],
                          )),
                      Text(
                        (totalWithPlan != null)
                            ? FormatController.numberFormat
                                .format(totalWithPlan)
                            : FormatController.numberFormat.format(0),
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
          SizedBox(
            height: 140,
            width: 280,
            child: Card(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total sem plano',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('R\$  ',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey[700],
                          )),
                      Text(
                        (totalWithoutPlan != null)
                            ? FormatController.numberFormat
                                .format(totalWithoutPlan)
                            : FormatController.numberFormat.format(0),
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    ]);
  }

  double? calculateTotalWithoutPlan() {
    if (minutes == null || rate == null) return null;
    return rate!.pricePerMinute * minutes!;
  }

  double? calculateTotalWithPlan() {
    if (minutes == null || rate == null || plan == null) return null;
    double minutesOverPlan = minutes! - plan!.time;
    if (minutesOverPlan < 0) return 0;
    return minutesOverPlan * rate!.pricePerMinute * (plan!.tax + 100) / 100;
  }
}
