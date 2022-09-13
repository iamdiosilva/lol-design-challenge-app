import 'package:desafio_loldesign/common_widgets/plan_panel/plan_panel.dart';
import 'package:flutter/material.dart';

import '../../../controllers/format_controller.dart';
import '../../../models/plan.dart';

class ListViewCardsAndroid extends StatelessWidget {
  List<Plan> plans;
  ListViewCardsAndroid({Key? key, required this.plans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: plans.length,
        itemBuilder: (context, index) => PlanPanel(
            planMinutes: plans[index].time.toInt(),
            planValue: FormatController.numberFormat.format(plans[index].time)),
      ),
    );
  }
}
