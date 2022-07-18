void main() {
  //First Mini Challenge:

  //QUESTION ONE

  /**
   * Create an empty list of type String. 
   * Name it months. 
   * Use the add method to add the names of the twelve months.
   */

  //Answer:

  List<String> months = [];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');

  //QUESTION TWO

  /**
   * Make an immutable list with the same elements as in Mini-exercise 1.
   */

  //Answer:

  //List<String> months = const[];

  //or

  //const month = [];

  //QUESTION THREE

  /**
   * Use collection for to create a new list 
   * with the month names in all uppercase.
   */

  //Answer:

  var capitalisedMonths = [
    for (var element in months) element.toUpperCase(),
  ];
  print(capitalisedMonths);

  //or

  // ignore: avoid_function_literals_in_foreach_calls

  // months.forEach((element) {
  //   print(element.toUpperCase());
  // });

  //or

  // for (var element in months) {
  //   print(element.toUpperCase());
  // }

  /**
   * Practise for the section on set
   */

  final anotherSet = {1, 2, 3, 1};
  print(anotherSet); //even though there are two 1s, it prints just one

  /**
   * Practise for the section on maps
   */

  //Second Mini Challenge:

  //QUESTION ONE

  /**
   * Create a map with the following keys: 
   * name, profession, country and city. 
   * For the values, add your own information.
   */

  //Answer:

  final details = <String, String>{
    'name': 'Kosi',
    'profession': 'Student',
    'country': 'Nigeria',
    'city': 'Awka',
  };

  //QUESTION TWO

  /**
   * You suddenly decide to move to Toronto, Canada. 
   * Programmatically update the values for country and city.
   */

  //Answer:

  details['country'] = 'Canada';
  details['city'] = 'Toronto';

  //QUESTION THREE

  //Iterate over the map and print all the values.

  //Answer:

  details.forEach((key, value) {
    print('$key - $value');
  });

  /**
   * Practise for the section on higher order methods
   */

  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  print(squares);

  final evens = squares.where((square) => square.isEven);
  print(evens);

  final aggregate = numbers.reduce((sum, element) => sum + element);
  print(aggregate);

  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.fold(
    0,
    (int sum, element) => sum + element,
  );

  // the type of sum and element is defined because the operation + can't work
  // on null values and notice, in fold, there must be a starting value.

  const junks = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallJunks = junks
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());

  print(bigTallJunks);

  //Third Mini Challenge:

  //QUESTION ONE

  /**
   * Given the following exam scores: 
   * final scores = [89, 77, 46, 93, 82, 67, 32, 88]; 
   * 1. Use sort to find the highest and lowest grades.
   */

  //Answer:

  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  final lowestGrades = scores.first;
  final highestGrades = scores.last;
  print(highestGrades);
  print(lowestGrades);

//QUESTION TWO

  /**
   * Use where to find all the B grades, 
   * that is, all the scores between 80 and 90.
   */

  //Answer:

  final bGrades = scores.where((element) => element >= 80 && element <= 90);
  print(bGrades);

  //MAIN CHALLENGES:

  // Challenge 1: A unique request

  /**
   * Write a function that takes a paragraph of text 
   * and returns a collection of unique String characters 
   * that the text contains.
   */

  //Answer:

  //This challenge involves using codepoints and runes.
  //check below for the function created.

// Challenge 2: Counting on you

  /**
   * Repeat Challenge 1, 
   * but this time have the function return a collection 
   * that contains the frequency, 
   * or count, of every unique character.
   */

  //Answer:

  //This challenge involves using codepoints and runes,
  //then a loop inside then the function to loop through the collection .
  //check below for the function created.

// Challenge 3: Mapping Users

  /**
   * RCreate a class called User with properties for id and name. 
   * Make a List with three users, 
   * specifying any appropriate names and IDs you like. 
   * Then write a function that converts your user list 
   * to a list of maps whose keys are id and name.
   */

  //Answer:

  //This challenge involves using classes and list,

  //check below for the function and class created.
}

const paragraphOfText = 'my name is kosi'
    'i originally did not know how to solve this'
    'i had to go through the supplementary materials to get a clue';

void challenge1() {
  Set<String> uniqueCodePoints(String text) {
    return text.runes
        .map((codePoint) => String.fromCharCode(codePoint))
        .toSet();
  }

  print(uniqueCodePoints(paragraphOfText));
}

void challenge2() {
  Map<String, int> characterFrequencyMap(String text) {
    final characterFrequencyMap = <String, int>{};
    for (var codePoint in text.runes) {
      final character = String.fromCharCode(codePoint);
      final frequency = characterFrequencyMap[character] ?? 0;
      characterFrequencyMap[character] = frequency + 1;
    }
    return characterFrequencyMap;
  }

  print(characterFrequencyMap(paragraphOfText));
}

void challenge3() {

  final users = [
    User(1, 'Kosi'),
    User(2, 'Vera'),
    User(3, 'Kommie'),
  ];

  List<Map<String, Object>> usersToMapList(List<User> users) {
    final userMapList = <Map<String, Object>>[];
    for (var user in users) {
      final userMap = {
        'id': user.id,
        'name': user.name,
      };
      userMapList.add(userMap);
    }
    return userMapList;
  }

  print(usersToMapList(users));
}

class User {
  User(this.id, this.name);
  final int id;
  final String name;
}



