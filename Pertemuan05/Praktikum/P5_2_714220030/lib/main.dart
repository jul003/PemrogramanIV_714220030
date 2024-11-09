import 'package:flutter/material.dart';
import 'package:p4_1_714220030/main_screen.dart';
import 'detail_screen.dart';

void main() =>
  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Tempat Wisata Bandung',
     theme: ThemeData(
        useMaterial3: false,
     ),
     home: const MainScreen(),
    );
  }
}

