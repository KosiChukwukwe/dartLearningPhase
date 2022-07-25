import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:async';

// Future<void> main() async {
//   print('Before the future');
//   final value = await Future<int>.delayed(
//     Duration(seconds: 1),
//     () => 42,
//   );
//   print('Value: $value');
//   print('After the future');
// }

// Future<void> main() async {
//   try {
//     final url = 'https://jsonplaceholder.typicode.com/todos/1'; //API URL
//     final parsedUrl = Uri.parse(url); //converts the url to http format
//     final response = await http.get(parsedUrl); //makes a GET req. to the url
//     final statusCode = response.statusCode;
//     if (statusCode == 200) {
//       final rawJsonString = response.body;
//       final jsonMap = jsonDecode(rawJsonString);
//       final todo = Todo.fromJson(jsonMap);
//       print(todo);
//     } else {
//       throw HttpException('$statusCode');
//     }
//   } on SocketException catch (error) {
//     print(error);
//   } on HttpException catch (error) {
//     print(error);
//   } on FormatException catch (error) {
//     print(error);
//   }
// }

Future<void> main() async {
  // final file = File('assets/text.txt');
  // final contents = await file.readAsString();
  // print(contents);

  final file = File('assets/text.txt');
  final stream = file.openRead();
  await for (var data in stream.transform(utf8.decoder)) {
    print(data);
  }

  miniExercise();

  final myStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);

  await for (var value in myStream) {
    print(value);
  }
}

class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }
  final int userId;
  final int id;
  final String title;
  final bool completed;
  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}

Future<void> miniExercise() async {
  try {
    final message = await Future<String>.delayed(
      Duration(seconds: 2),
      () => 'I am from the future.',
    );
    print(message);
  } catch (error) {
    print(error);
  }
}
