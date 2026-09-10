
import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';

class SectionTitle extends Contentpart{
  late String title;

  String toXML() {
    return '''
      <SectionTitle>
        <title>$title</title>
      </SectionTitle>
    ''';
  }
}