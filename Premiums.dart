import 'package:flutter/material.dart';

class Premiums extends StatefulWidget {
  const Premiums({super.key});

  @override
  State<Premiums> createState() => _PremiumsState();
}

class _PremiumsState extends State<Premiums> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pay Premiums'),),
      body: const Center(
        child: Text('Welcome to Premiums Page'),
      ),
    );
  }
}