

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
}

class Ingredient extends Contentpart{
  late String name;
  int amount = 0;
  UNITS unit = UNITS.g;
}