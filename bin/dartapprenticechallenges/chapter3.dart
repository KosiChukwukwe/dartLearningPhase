import 'package:characters/characters.dart';

void main() {
  // Challenge 1:
  const attendance = 90;
  const homework = 80;
  const exam = 94;
  const rawGrade = (0.2 * attendance) + (0.3 * homework) + (0.5 * exam);
  final integerGrade = rawGrade.toInt();
  print(integerGrade);

  // Challenge 2:

  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries.runes);
  // (127481, 127465, 127479, 127476)
  // 127481 is T (127465 is D) so the first flag is Chad.
  // 127479 is R (127476 is O) so the second flag is Romania.

  // Challenge 3:

  const vote = 'Thumbs up! 👍🏿';
  print(vote.codeUnits.length); // 15

  print(vote.runes.length); // 13

  print(vote.characters.length); // 12

  // Challenge 4:

  var name = 'Ray';
  name += ' Wenderlich';
  print(name);
  // `const` variables can't be changed, so you need to use `var`.

  // Challenge 5:

  const value = 10 / 2;
  print(value); // 5.0
  // `value` is a `double`.

  /// Challenge 6:

  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary);
  // 10 × 5 = 50
}
