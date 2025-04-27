import 'package:bca_project/app_routes.dart';
import 'package:bca_project/named_navigate/named_first_screen.dart';
import 'package:bca_project/named_navigate/named_second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NamedFirstScreen(),
      routes: {
        AppRoutes.firstScreen: (ctx) => NamedFirstScreen(),
        AppRoutes.secondScreen: (ctx) => NamedSecondScreen(),
      },
    );
  }
}
