void main() {
  var integers = [1, 3, 5, 7, 9];
  var sum = 0;

  for (var item in integers) {
    sum += item;
  }
  print(sum);
}
