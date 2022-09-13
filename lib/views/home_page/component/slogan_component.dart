import 'package:flutter/material.dart';

class SloganComponent extends StatelessWidget {
  const SloganComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            'Lol Pós.',
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          'Mais vantagens para você. O plano para quem é ultra conectado!',
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
