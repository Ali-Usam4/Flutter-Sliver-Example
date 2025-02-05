import 'package:flutter/material.dart';
import 'package:flutter_sliver_example/sliver_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slivers Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliversPage(),
    );
  }
}
