/*
Practice Question 2: Dart Class with Null Safety

Task Description:
Create a Dart class named UserProfile with properties name (String), age (nullable int), and favoriteColor (String with a default value of 'blue'). Implement a method profileSummary that returns a string summarizing the user's profile. Ensure null safety is appropriately handled.
 */

class UserProfile {
  String name;
  int? age;
  String favoriteColor;

  UserProfile({required this.name, this.age, this.favoriteColor = 'blue'});

  String profileSummary() => 'Name: $name, Age: ${age ?? 'not specified'}, Favorite Color: $favoriteColor' ;
}