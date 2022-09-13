import '../core/theme/app_icons.dart';
import '../models/advantage_plan.dart';

class CommonRepository {
  static List<AdvantagePlan> advantages = [
    AdvantagePlan(
      imgPath: AppIcons.smartphone,
      description:
          'Ligações para qualquer operadora do Brasil e para fixos de mais de 100 países.',
    ),
    AdvantagePlan(
      imgPath: AppIcons.chat,
      description: 'SMS à vontade para qualquer operadora.',
    ),
    AdvantagePlan(
      imgPath: AppIcons.gps,
      description:
          'Apps ilimitados para você se comunicar, se divertir e se deslocar.',
    ),
    AdvantagePlan(
      imgPath: AppIcons.worldwide,
      description:
          'Passaporte Américas para navegar e falar em 18 países das Américas.',
    ),
    AdvantagePlan(
      imgPath: AppIcons.vip,
      description:
          'Serviços exclusivos para ler, assistir vídeos e se manter atualizado.',
    ),
  ];

  static List<String> availableOnAllPlans = [
    'Lol-NET Wifi na Rua',
    'Internet 4.5G',
    'Apps ilimitados para você se comunicar, se divertir e se deslocar.',
    'Serviços exclusivos para ler, assistir vídeos e se manter atualizado.',
  ];
}
