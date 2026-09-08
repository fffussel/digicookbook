import 'package:digicookbook/DataObjects/Setting/Settings.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings view',
        style: TextStyle(color: Settings().textColor, fontSize: 24),
      ),
    );
  }
}
