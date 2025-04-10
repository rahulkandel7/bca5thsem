import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.white,
                size: 90,
              ),
              Image.network(
                "https://plus.unsplash.com/premium_photo-1743096946788-b8d8304542d1?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8",
                width: 200,
                height: 700,
                fit: BoxFit.contain,
              ),
              Image.asset("assets/images/logo.png"),
            ],
          ),
        ),
      ),
    );
  }
}
