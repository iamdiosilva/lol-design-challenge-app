import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  final String title;
  final Function() action;
  const HeaderButton({Key? key, required this.title, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.orange),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
