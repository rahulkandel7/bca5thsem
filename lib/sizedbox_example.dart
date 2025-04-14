import 'package:flutter/material.dart';

class SizedboxExample extends StatelessWidget {
  const SizedboxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox Example"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "I am text",
              style: TextStyle(
                fontSize: 26,
              ),
            )
          ],
        ),
      ),
    );
  }
}
