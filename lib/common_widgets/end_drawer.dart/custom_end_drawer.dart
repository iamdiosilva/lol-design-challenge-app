import 'package:flutter/material.dart';

import '../../core/theme/app_icons.dart';

class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orangeAccent,
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(
                AppIcons.home,
                width: 64,
                color: Colors.white70,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              onTap: () => Navigator.pushReplacementNamed(context, '/'),
            ),
            const SizedBox(height: 12),
            ListTile(
              leading: Image.asset(
                AppIcons.plan,
                width: 64,
                color: Colors.white70,
              ),
              title: Text(
                'Planos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              onTap: () => Navigator.pushReplacementNamed(context, '/plans'),
            ),
            const SizedBox(height: 12),
            ListTile(
              leading: Image.asset(
                AppIcons.transparency,
                width: 64,
                color: Colors.white70,
              ),
              title: Text(
                'Transparencia',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/transparency'),
            ),
          ],
        ),
      ),
    );
  }
}
