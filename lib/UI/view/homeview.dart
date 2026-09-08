import 'package:digicookbook/DataObjects/Setting/Settings.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home view',
        style: TextStyle(color: Settings().textColor, fontSize: 24),
      ),
    );
  }
}
