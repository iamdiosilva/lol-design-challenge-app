import 'package:flutter/material.dart';

import '../../../common_widgets/plan_panel/plan_panel.dart';
import '../../../controllers/format_controller.dart';
import '../../../models/plan.dart';

class ListViewCardsWeb extends StatelessWidget {
  List<Plan> plans;
  ListViewCardsWeb({Key? key, required this.plans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 380,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: plans.length,
        itemBuilder: (context, index) {
          return PlanPanel(
            planMinutes: plans[index].time.toInt(),
            planValue: FormatController.numberFormat.format(plans[index].time),
          );
        },
      ),
    );
  }
}
