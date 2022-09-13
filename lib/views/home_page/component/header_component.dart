import 'package:flutter/material.dart';

import '../../../core/app/settings/platform_type.dart';
import 'header_button.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 64,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)),
        ),
        color: Colors.orangeAccent,
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lol Telecom',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold),
              ),
              if (PlatformType.getPlatformType() == PlatformType.web)
                Visibility(
                  visible: size.width > 600,
                  replacement: IconButton(
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                      icon: Icon(
                        Icons.menu,
                        size: 32,
                        color: Colors.grey[700],
                      )),
                  child: Row(
                    children: [
                      HeaderButton(
                        title: 'Home',
                        action: () => Navigator.pushNamed(context, '/'),
                      ),
                      const SizedBox(width: 8),
                      HeaderButton(
                        title: 'Planos',
                        action: () => Navigator.pushNamed(context, '/plans'),
                      ),
                      const SizedBox(width: 8),
                      HeaderButton(
                        title: 'Transparencia',
                        action: () =>
                            Navigator.pushNamed(context, '/transparency'),
                      ),
                    ],
                  ),
                )
              else
                IconButton(
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    icon: Icon(
                      Icons.menu,
                      size: 32,
                      color: Colors.grey[700],
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
