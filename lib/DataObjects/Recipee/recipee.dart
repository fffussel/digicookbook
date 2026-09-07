

import 'dart:io';

import 'package:digicookbook/DataObjects/Recipee/ContentParts/contentpart.dart';

class Recipee {
  String id = "";
  String name = "";
  String description = "";
  late File image;
  List<Contentpart> parts = [];
}