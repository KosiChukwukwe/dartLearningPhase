import 'dart:math';

void main() {
  // challenge 1
  const myAge = 21;
  var dogs = 0;
  dogs++;
  print(myAge);
  print(dogs);

  // challenge 2
  //var or int can be used but var is preferable
  var age = 16;
  print(age);
  age = 30;
  print(age);

  //challenge 3

  const x = 46;
  const y = 10;

  // 1
  const answer1 = (x * 100) + y;
  print(answer1);
  // answer1 = 4600 + 10 = 4610

  // 2
  const answer2 = (x * 100) + (y * 100);
  print(answer2);
  // answer2 = 4600 + 1000 = 5610

  // 3
  const answer3 = (x * 100) + (y / 10);
  print(answer3);
  // answer3 = 4600 + 1 = 4601.0

  //challenge 4

  const rating1 = 8.9;
  const rating2 = 12.5;
  const rating3 = 15.0;
  const averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating.toInt());
  //average rating is 12.

  //challenge 5

  const a = 2.0;
  const b = 6.0;
  const c = 3.0;
  final root1 = (0 - b + sqrt(b * b - 4 * a * c)) / (2 * a);
  final root2 = (0 - b - sqrt(b * b - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);

  //root 1 and root 2 is -0.6339745962155614 and -2.3660254037844384 resp.
}
