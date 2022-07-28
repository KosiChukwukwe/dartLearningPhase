import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:isolate';

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

// 

Future<void> main() async { 
// 1 
final receivePort = ReceivePort();
// 2 
final isolate = await Isolate.spawn( playHideAndSeekTheLongVersion, 
// 3 
receivePort.sendPort, );
// 4 
receivePort.listen((message) { 
  print(message); // 5 
  receivePort.close(); 
  isolate.kill(); }); }

void playHideAndSeekTheLongVersion(SendPort sendPort) { 
  var counting = 0; 
  for (var i = 1; i <= 1000000000; i++) { 
    counting = i; }
sendPort.send('$counting! Ready or not, here I come!'); }

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
