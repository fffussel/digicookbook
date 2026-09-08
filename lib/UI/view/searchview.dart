import 'package:digicookbook/DataObjects/Setting/Settings.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search view',
        style: TextStyle(color: Settings().textColor, fontSize: 24),
      ),
    );
  }
}
