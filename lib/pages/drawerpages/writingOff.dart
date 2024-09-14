import 'package:flutter/material.dart';

class WritingOfPage extends StatefulWidget {
  const WritingOfPage({super.key});

  @override
  State<WritingOfPage> createState() => _WritingOfPageState();
}

class _WritingOfPageState extends State<WritingOfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Списание"),),
      body: Center(
        child: Text("Списание"),
      ),
    );
  }
}