import 'package:flutter/material.dart';
import 'package:mytestapp/Homework2/air_quality.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // ไล่โทนสีหลักของธีม
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue, // สีหลัก
          secondary: Colors.greenAccent, // สีรอง
        ),
        scaffoldBackgroundColor:
            Colors.transparent, // พื้นหลังโปร่งใส เพื่อใช้ Gradient
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent, // ทำให้ AppBar ใช้ Gradient ได้
          elevation: 0, // ลบเงาของ AppBar
        ),
      ),
      home: const GradientBackground(child: AirQuality()), // ใช้พื้นหลังไล่โทน
    );
  }
}

class GradientBackground extends StatelessWidget {
  final Widget child;
  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF00C9FF), // สีฟ้าอ่อน
            Color(0xFF92FE9D), // สีเขียวอ่อน
          ],
        ),
      ),
      child: child,
    );
  }
}
