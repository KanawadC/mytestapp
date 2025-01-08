import 'package:flutter/material.dart';

class Answer4 extends StatelessWidget {
  const Answer4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          // ส่วนหัว (Header)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 32),
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // ส่วนข้อมูลโปรไฟล์
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildProfileRow(Icons.email, 'user@example.com'),
                const SizedBox(height: 12),
                buildProfileRow(Icons.phone, '+123 456 7890'),
                const SizedBox(height: 12),
                buildProfileRow(Icons.place, '123 Main Street'),
              ],
            ),
          ),
          const Expanded(child: SizedBox()), // ดันปุ่มไปด้านล่างสุด

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildMenuButton('Edit Profile'),
                buildMenuButton('Logout'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget buildMenuButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(150, 50),
        backgroundColor: Colors.white,
      ),
    );
  }
}
