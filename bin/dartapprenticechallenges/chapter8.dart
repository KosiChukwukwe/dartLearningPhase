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
}
