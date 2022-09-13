import 'package:desafio_loldesign/common_widgets/plan_panel/android_widgets/contract_field_android.dart';
import 'package:flutter/material.dart';

import '../../core/app/settings/platform_type.dart';
import 'android_widgets/info_field_android.dart';
import 'web_widgets/contract_field_web.dart';
import 'web_widgets/info_field_web.dart';

class PlanPanel extends StatelessWidget {
  final int planMinutes;
  final String planValue;
  const PlanPanel(
      {Key? key, required this.planMinutes, required this.planValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (PlatformType.getPlatformType() == PlatformType.android) {
      return SizedBox(
        width: 260,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              InfoFieldAndroid(planMinutes: planMinutes, planValue: planValue),
              const ContractFieldAndroid(),
            ],
          ),
        ),
      );
      //WEB
    } else {
      return SizedBox(
        width: 380,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              InfoFieldWeb(planMinutes: planMinutes, planValue: planValue),
              const ContractFieldWeb(),
            ],
          ),
        ),
      );
    }
  }
}
