import 'package:flutter/material.dart';

class AggregationPage extends StatefulWidget {
  const AggregationPage({super.key});

  @override
  State<AggregationPage> createState() => _AggregationPageState();
}

class _AggregationPageState extends State<AggregationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Агрегация"),),
      body: const Center(
        child:  Text("Агрегация"),
      ),
    );
  }
}