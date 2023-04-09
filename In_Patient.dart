import 'package:flutter/material.dart';

class InPatient extends StatefulWidget {
  const InPatient({super.key});

  @override
  State<InPatient> createState() => _InPatientState();
}

class _InPatientState extends State<InPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('In Patient'),),
      body: const Center(
        child: Text('Welcome to in Patient'),
      ),
    );
  }
}