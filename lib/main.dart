import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';
import 'package:digicookbook/DataObjects/Setting/Settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RootWidget(),
  ));
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Settings().backgroundColor,
      body: Center(
        child: Text(Contentpart.test),
      ),
    );
  }
}

