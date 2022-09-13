import 'package:flutter/material.dart';

import '../../separator_line.dart';

class InfoFieldWeb extends StatelessWidget {
  final int planMinutes;
  final String planValue;
  const InfoFieldWeb(
      {Key? key, required this.planMinutes, required this.planValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'FaleMais! ',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: Colors.orangeAccent,
                ),
              ),
              Text(
                planMinutes.toString(),
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          const SeparatorLine(width: 360),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'R\$  ',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Text(
                  planValue,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal[500],
                  ),
                ),
                const Text(
                  ' /mês*',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  planMinutes.toString(),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
                  ),
                ),
                Text(
                  ' Minutos em ligações',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
