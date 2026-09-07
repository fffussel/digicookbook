

import 'dart:io';

import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';

class Recipe {
  late String id;
  late String name;
  late String description;
  late File image;
  late List<Contentpart> parts;

  Recipe (this.id, this.name, this.description, this.image, this.parts);
}