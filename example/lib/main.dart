import 'package:flutter/material.dart';
import 'package:store_atomic_design/ui/atoms/app_button.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo Atomic Design')),
        body: Center(
          child: AppButton(label: 'Click me', onPressed: () {}),
        ),
      ),
    );
  }
}
