import 'package:flutter/material.dart';

class CustomDropDownButtonComponent extends StatelessWidget {
  final String hint;
  final int? value;
  final List<int> items;
  final void Function(int?)? onChanged;
  const CustomDropDownButtonComponent(
      {Key? key,
      required this.items,
      this.value,
      this.onChanged,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int?>(
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
          .map((value) => DropdownMenuItem<int>(
                value: value,
                child: Text(
                  value.toString(),
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ))
          .toList(),
      onChanged: onChanged,
    );
  }
}
