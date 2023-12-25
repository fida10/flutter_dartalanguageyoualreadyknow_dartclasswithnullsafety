import 'package:dartalanguageyoualreadyknow_dartclasswithnullsafety/main.dart';
import 'package:test/test.dart';

void main() {
  test('UserProfile class test', () {
    UserProfile user1 = UserProfile(name: 'Alice', age: 30);
    UserProfile user2 = UserProfile(name: 'Bob'); // No age provided

    // Test user1 profile summary
    expect(
        user1.profileSummary(), 'Name: Alice, Age: 30, Favorite Color: blue');

    // Test user2 profile summary with null age
    expect(user2.profileSummary(),
        'Name: Bob, Age: not specified, Favorite Color: blue');
  });
}
