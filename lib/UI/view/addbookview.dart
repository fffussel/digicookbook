import 'package:digicookbook/DataObjects/Setting/Settings.dart';
import 'package:flutter/material.dart';

class AddBookView extends StatelessWidget {
  const AddBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Add book view',
        style: TextStyle(color: Settings().textColor, fontSize: 24),
      ),
    );
  }
}
