import 'package:flutter/material.dart';
import 'package:video_calling/pages/video_calling_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Calling',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:  VideoCallingPage(),
    );
  }
}
