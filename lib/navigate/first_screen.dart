import 'package:bca_project/navigate/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey<FormState> _addFruitFormKey = GlobalKey();

  List<String> fruitName = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Array of Fruits"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Form(
                key: _addFruitFormKey,
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Created the textform field
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Fruit",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please provide fruit name";
                        } else if (value.length < 3) {
                          return "Provide valid fruit name";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        setState(() {
                          fruitName.add(newValue!);
                        });
                      },
                    ),
                    // Created the button for submitting
                    FilledButton.tonal(
                      onPressed: () {
                        if (!_addFruitFormKey.currentState!.validate()) {
                          return;
                        }
                        _addFruitFormKey.currentState!.save();
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
              ),
              FilledButton.tonal(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(fruitName: fruitName),
                    ),
                  );
                },
                child: Text("Go To Next Screen"),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemBuilder: (ctx, i) => Text(fruitName[i]),
                  itemCount: fruitName.length,
                ),
              ),
            ],
          ),
        ));
  }
}
