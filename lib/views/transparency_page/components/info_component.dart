import 'package:flutter/material.dart';

class InfoComponent extends StatelessWidget {
  const InfoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            'Transparencia com seus clientes.',
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          'A preocupaçao com a transparencia é uma das nossas prioridades.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
          maxLines: 4,
        ),
      ],
    );
  }
}
