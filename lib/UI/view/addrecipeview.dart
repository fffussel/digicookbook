import 'package:digicookbook/DataObjects/Setting/Settings.dart';
import 'package:flutter/material.dart';

class AddRecipeView extends StatelessWidget {
  const AddRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Add recipe view',
        style: TextStyle(color: Settings().textColor, fontSize: 24),
      ),
    );
  }
}
