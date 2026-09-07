import 'package:digicookbook/DataObjects/Recipee/ContentParts/contentpart.dart';
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
      body: Center(
        child: Text(Contentpart.test),
      ),
    );
  }
}

