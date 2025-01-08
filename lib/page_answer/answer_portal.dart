import 'package:flutter/material.dart';
import 'package:mytestapp/page_answer/Answer1.dart';
import 'package:mytestapp/page_answer/answer2.dart';
import 'package:mytestapp/page_answer/answer3.dart';
import 'package:mytestapp/page_answer/answer4.dart';

void main() {
  runApp(const MaterialApp(
    home: AnswerPortal(),
  ));
}

class AnswerPortal extends StatelessWidget {
  const AnswerPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My Answer'),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 204, 49),
      ),
      backgroundColor: const Color.fromARGB(255, 242, 218, 240),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Answer1()));
                },
                child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Answer2()));
                },
                child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Answer3()));
                },
                child: const Text('Answer 3')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Answer4()));
                },
                child: const Text('Answer 4')),
          ],
        ),
      ),
    );
  }
}
