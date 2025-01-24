import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome Back!"),
              ElevatedButton(
                onPressed: () {},
                child: Text("Press ME!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
