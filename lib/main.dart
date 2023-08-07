import 'package:flutter/material.dart';
import 'package:flutter_api_demo/config/themes/AppTheme.dart';
import 'package:flutter_api_demo/features/views/screens/main_page.dart';

import 'features/views/screens/home.dart';
import 'features/views/screens/todos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter API Demo',
      theme: AppTheme.dark,
      home: const MainPage(),
    );
  }
}
