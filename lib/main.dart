import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chatting_1/screen/chatting_screen.dart';  // 채팅 화면

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  // Firebase 초기화
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChattingScreen(),  // 채팅 화면으로 이동
    );
  }
}