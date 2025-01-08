import 'package:flutter/material.dart';

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Grid"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                const SizedBox(width: 20),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                const SizedBox(width: 20),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
                const SizedBox(width: 20),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
                const SizedBox(width: 20),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
