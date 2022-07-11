void main() {
  // Challenge 1:

  const firstName = 'Bob';
  var lastName = '';
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = firstName + ' ' + lastName;
  print(fullName);

  // answer is the 'lastName' was declared in the `if` statement as a local variable but was used
  // in the parent scope. it needs to be declared at or above the scope
  // where it is needed.

  // Challenge 2: Boolean challenge

  print(true && true); // true
  print(false || false); // false
  print((true && 1 != 2) || (4 > 3 && 100 < 1)); // true
  print(((10 / 2) > 3) && ((10 % 2) == 0)); // true

  // Challenge 3:

  const number = 48;
  var trial = 1;
  var times = 0;
  while (trial < number) {
    trial = trial * 2;
    times++;
  }
  print('Next power of 2 >= $number is $trial '
      'which is 2 to the power of $times.');
  // Next power of 2 >= 48 which is 2 to the power of 6.

  // Challenge 4: Fibonacci

  const n = 22;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done++;
  }
  print('Fibonacci number $n is $current.');
  // Fibonacci number 10 is 17711.

  // Challenge 5:

  var sum = 0;
  var count = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i; //15
    count++; //6
  }
  print('The value of the sum is $sum after $count iterations.');

  /// Challenge 6:

  for (var i = 10; i >= 0; i--) {
    print(i);
  }
 
 //OR 

  // var num = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
  // num.forEach(print);

  // Challenge 7: P
  
  for (var i = 0; i <= 10; i++) {
    print(i / 10);
  }
}
