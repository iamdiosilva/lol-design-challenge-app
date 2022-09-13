import 'package:desafio_loldesign/core/app/settings/platform_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../repositories/plans_repository.dart';
import 'android_widget/list_view_cards_android.dart';
import 'web_widget/list_view_cards_web.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PlansRepository>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lol Pós.',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'O plano para quem é ultra conectado!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
                if (PlatformType.getPlatformType() == PlatformType.android) ...[
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: ListViewCardsAndroid(
                      plans: value.plans,
                    ),
                  )
                ] else if (PlatformType.getPlatformType() == PlatformType.web)
                  ListViewCardsWeb(
                    plans: value.plans,
                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                      '*Os preços podem variar conforme a forma de pagamento e opção de fidelização.',
                      style: TextStyle(fontSize: 11, color: Colors.black38)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Vantagens do Plano Lol Pós',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
