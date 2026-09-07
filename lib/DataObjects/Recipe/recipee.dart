

import 'dart:io';

import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';

class Recipe {
  late String id = "";
  String name = "";
  late String description = "";
  late File image;
  late List<Contentpart> parts;

  Recipe (this.name);
}