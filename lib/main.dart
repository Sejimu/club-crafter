import 'firebase_options.dart';
import 'src/internal/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ClubCrafter());

  // final receivePort = ReceivePort(); // создаем порт для главного изолята

  // final isolate = await Isolate.spawn(count, receivePort.sendPort);
  // receivePort.listen(
  //   (m) {
  //     print(m);
  //     receivePort.close();
  //     isolate.kill();
  //   },
  // );
  // print("Some work...");

//   int result = 0;
//   for (var i = 1; i <= 50000000000; i++) {
//     result = i;
//   }

//   print(result);
// }

// void count(SendPort sendPort) {
//   var result = 0;
//   for (var i = 1; i <= 50000000000; i++) {
//     result = i;
//   }
//   sendPort.send(result);
}
