import 'package:flutter/material.dart';

import '../../../models/plan.dart';

class DropDownButtonPlan extends StatelessWidget {
  final String hint;
  final Plan? value;
  final List<Plan> items;
  final void Function(Plan?)? onChanged;
  const DropDownButtonPlan(
      {Key? key,
      required this.hint,
      this.value,
      required this.items,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Plan?>(
      value: value,
      dropdownColor: Colors.grey,
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      hint: Text(
        hint,
        style: const TextStyle(fontSize: 24, color: Colors.white),
      ),
      items: items
          .map((plan) => DropdownMenuItem<Plan>(
                value: plan,
                child: Text(
                  plan.name.toString(),
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ))
          .toList(),
      onChanged: onChanged,
    );
  }
}
