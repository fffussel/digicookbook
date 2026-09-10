
import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';

class Spacer extends Contentpart {

  String toXML() {
    return'''
      </Spacer>
    ''';
  }
}