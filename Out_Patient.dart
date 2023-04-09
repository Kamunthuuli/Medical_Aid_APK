import 'package:flutter/material.dart';

class OutPatient extends StatefulWidget {
  const OutPatient({super.key});

  @override
  State<OutPatient> createState() => _OutPatientState();
}

class _OutPatientState extends State<OutPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Out Patient'),),
      body: const Center(
        child: Text('Welcome to Out_Patient Page'),
      ),
    );
  }
}