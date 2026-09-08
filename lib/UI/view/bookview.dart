import 'package:digicookbook/DataObjects/Setting/Settings.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Book view',
        style: TextStyle(color: Settings().textColor, fontSize: 24),
      ),
    );
  }
}
