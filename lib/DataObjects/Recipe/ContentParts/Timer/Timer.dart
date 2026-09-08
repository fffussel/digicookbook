
import 'package:digicookbook/DataObjects/Recipe/ContentParts/contentpart.dart';

class Timer extends Contentpart {
  double timeInMinutes = 0;

  @override
  String toJSON() {
    var minutes = this.timeInMinutes;
    return '''
      'Timer': {
        'timeInMinutes': $minutes
       }
    ''';
  }
}