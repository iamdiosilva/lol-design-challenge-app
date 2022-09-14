import 'package:desafio_loldesign/repositories/rates_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'repositories/plans_repository.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PlansRepository()),
        ChangeNotifierProvider(create: (context) => RatesRepository()),
      ],
      child: const App(),
    ),
  );
}
