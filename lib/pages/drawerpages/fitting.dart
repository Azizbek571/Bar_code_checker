import 'package:flutter/material.dart';

class FittingPage extends StatefulWidget {
  const FittingPage({super.key});

  @override
  State<FittingPage> createState() => _FittingPageState();
}

class _FittingPageState extends State<FittingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Заказ"),),
      body: const Center(
        child: Text("Заказ"),
      ),
    );
  }
}