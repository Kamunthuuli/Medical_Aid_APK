import 'package:flutter/material.dart';

class PostQuestion extends StatefulWidget {
  const PostQuestion({super.key});

  @override
  State<PostQuestion> createState() => _PostQuestionState();
}

class _PostQuestionState extends State<PostQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post a Question page'),),
      body: const Center(
        child: Text('Welcome to Post a Question Page'),
      ),
    );
  }
}