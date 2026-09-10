
import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';

class FormatedText extends Contentpart {
  String text;
  bool bold;
  bool italic;
  bool underlined;
  String colour;
  String font;

  FormatedText(this.text, this.bold, this.colour, this.font, this.italic, this.underlined);

  String toXML() {
    return '''
      <FormatedText bold="$bold" italic="$italic" underlined="$underlined" colour="$colour" font="$font">
        $text
      </FormatedText>
    ''';
  }
}