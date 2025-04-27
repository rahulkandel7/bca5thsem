import 'package:bca_project/app_routes.dart';
import 'package:flutter/material.dart';

class NamedFirstScreen extends StatelessWidget {
  const NamedFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Navigation First Screen"),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed(AppRoutes.secondScreen, arguments: "Arguments");
          },
          child: Text("Goto Next Screen"),
        ),
      ),
    );
  }
}
