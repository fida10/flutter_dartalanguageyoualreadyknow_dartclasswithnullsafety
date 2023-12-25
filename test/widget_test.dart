import 'package:dartalanguageyoualreadyknow_dartclasswithnullsafety/main.dart';
import 'package:test/test.dart';

void main() {
  test('analyzeText function test', () {
    var result = analyzeText('Hello123');

    // Test for length
    expect(result['length'], 8);

    // Test for hasDigits
    expect(result['hasDigits'], true);

    // Test for reversed
    expect(result['reversed'], '321olleH');
  });
}
