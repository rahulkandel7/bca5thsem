import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _nameFormKey = GlobalKey();

  bool switchValue = false;
  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Form(
          key: _nameFormKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  print(newValue!);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter name",
                  labelText: "User name",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              Checkbox(
                  value: checkedValue,
                  onChanged: (value) {
                    setState(() {
                      checkedValue = value ?? false;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              FilledButton.tonal(
                onPressed: () {
                  if (!_nameFormKey.currentState!.validate()) {
                    return;
                  }
                  _nameFormKey.currentState!.save();
                },
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
