/*
Practice Question 1: Building a Dart Function Utilizing Various Concepts

Task Description:
Create a Dart function named analyzeText that takes a string and returns a Map with three keys: length (the length of the string), hasDigits (a boolean indicating if the string contains any digits), and reversed (the string in reverse order). Implement this function by utilizing Dart's string manipulation and collection features.
 */

import 'package:characters/characters.dart';

Map<String, dynamic> analyzeText(String input) {
  final ans = <String,
      dynamic>{}; //declaring a map this way is also possible; don't need the constructor

  ans['length'] = input.length;
  ans['hasDigits'] = input.digits();
  ans['reversed'] = input.characters.toList().reversed.join();

  return ans;
}

extension HasDigits on String {
  bool digits() {
    for (var indivChar in characters) {
      if (RegExp(r'[0-9]').hasMatch(indivChar)) {
        return true;
      }
    }
    return false;
  }
}
