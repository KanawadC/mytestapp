import 'package:flutter/material.dart';

class Answer2 extends StatelessWidget {
  const Answer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Media Post"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Your Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "2 hours ago",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20), // ระยะห่างระหว่างแถวที่ 1 และ 2

          // แถวที่สอง: รูปภาพโพสต์
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey[300], // สีเทาสำหรับรูปภาพโพสต์
          ),
          const SizedBox(height: 20), // ระยะห่างระหว่างแถวที่ 2 และ 3

          // แถวที่สาม: ปุ่ม Like, Comment, Share
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // จัดระยะห่างระหว่างปุ่ม
            children: [
              IconButton(
                onPressed: () {},
                icon: const Text('like'),
                color: Colors.blue,
              ),
              IconButton(
                onPressed: () {},
                icon: const Text('comment'),
                color: Colors.blue,
              ),
              IconButton(
                onPressed: () {},
                icon: const Text('share'),
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
