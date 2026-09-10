

import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';

enum UNITS {
  Kg,
  g,
  L,
  ml,
  cl,
  STK,
  TL,
  EL,
  Pr
  //TODO add missing Units and localise
}

class IngredientList extends Contentpart{
  late List<Ingredient> list;

  String toXML() {
    throw UnimplementedError("toXML is not implemented for this object");
  }
}

class Ingredient extends Contentpart{
  late String id;
  late String name;
  int amount = 0;
  UNITS unit = UNITS.g;

  String toXML() {
    throw UnimplementedError("toXML is not implemented for this object");
  }
}