import 'package:flutter/material.dart';

class ShipmentPage extends StatefulWidget {
  const ShipmentPage({super.key});

  @override
  State<ShipmentPage> createState() => _ShipmentPageState();
}

class _ShipmentPageState extends State<ShipmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Отгрузка"),),
      body: const Center(
        child: Text("Отгрузка"),
      ),
    );
  }
}