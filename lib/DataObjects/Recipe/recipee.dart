

import 'dart:io';

import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';
import 'package:digicookbook/DataObjects/Recipe/Tags/Tag.dart';

class Recipe {
  late String id;
  late String name;
  late String description;
  late File image;
  late List<Tag> tags;
  late List<Contentpart> parts;

  Recipe (this.id, this.name, this.description, this.image, this.tags, this.parts);
}