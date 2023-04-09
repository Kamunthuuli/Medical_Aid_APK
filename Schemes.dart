import 'package:flutter/material.dart';

class Schemes extends StatefulWidget {
  const Schemes({super.key});

  @override
  State<Schemes> createState() => _SchemesState();
}

class _SchemesState extends State<Schemes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schemes Available'),),
      body: const Center(
        child: Text('Welcome to Schemes page'),
      ),
    );
  }
}