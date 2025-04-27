import 'package:flutter/material.dart';

class NamedSecondScreen extends StatelessWidget {
  const NamedSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String value = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Navigation Second Screen"),
      ),
      body: Center(child: Text(value)),
    );
  }
}
