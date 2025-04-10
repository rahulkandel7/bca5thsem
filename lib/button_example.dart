import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: ListView(
        // spacing: 30,
        children: [
          FilledButton(
            onPressed: () {},
            child: Text(
              "Button 1",
            ),
          ),
          FilledButton.tonal(
            onPressed: () {},
            child: Text(
              "Button 2",
            ),
          ),
          FilledButton.tonalIcon(
            onPressed: () {},
            label: Text("Add"),
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          IconButton.filledTonal(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          TextButton(
            onPressed: () {
              print("i am pressed");
            },
            child: Text(
              "Long Text",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Elevated Button",
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              print("I am container");
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("object");
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
