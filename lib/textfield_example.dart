import 'package:flutter/material.dart';

class TextfieldExample extends StatefulWidget {
  const TextfieldExample({super.key});

  @override
  State<TextfieldExample> createState() => _TextfieldExampleState();
}

class _TextfieldExampleState extends State<TextfieldExample> {
  final TextEditingController dummyTextController =
      TextEditingController(text: "Hello");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        child: Column(
          children: [
            TextField(
              controller: dummyTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.purple,
                    width: 3,
                  ),
                ),
                labelText: "Type here",
                floatingLabelAlignment: FloatingLabelAlignment.start,
                prefixIcon: Icon(Icons.type_specimen_outlined),
                suffixIcon: Icon(Icons.edit_note),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                counterText: "",
              ),
              // obscureText: true,
              // obscuringCharacter: "*",
              keyboardType: TextInputType.text,
              cursorColor: Colors.amber,
              // maxLength: 10,
              // maxLines: 4,
              // minLines: 1,
              onChanged: (value) {
                setState(() {
                  dummyTextController.text = value;
                });
              },
              // readOnly: true,
              onTap: () {},
            ),
            Text(
              dummyTextController.text,
              style: TextStyle(
                fontSize: 29,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
