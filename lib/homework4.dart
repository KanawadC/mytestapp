import 'package:flutter/material.dart';

class TrafficLightScreen extends StatefulWidget {
  final VoidCallback toggleTheme; // รับฟังก์ชันเปลี่ยนธีม

  const TrafficLightScreen({super.key, required this.toggleTheme});

  @override
  _TrafficLightScreenState createState() => _TrafficLightScreenState();
}

class _TrafficLightScreenState extends State<TrafficLightScreen> {
  int _currentLight = 0;

  void _changeLight() {
    setState(() {
      _currentLight = (_currentLight + 1) % 3;
    });
  }

  double _getOpacity(int lightIndex) {
    return _currentLight == lightIndex ? 1.0 : 0.3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Traffic Light Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _getOpacity(0),
              child: _buildLight(Colors.red, _currentLight == 0),
            ),
            SizedBox(height: 20),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _getOpacity(1),
              child: _buildLight(Colors.yellow, _currentLight == 1),
            ),
            SizedBox(height: 20),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _getOpacity(2),
              child: _buildLight(Colors.green, _currentLight == 2),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _changeLight,
              child: Text('Change Light'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: widget.toggleTheme, // ปุ่มเปลี่ยนธีม
              child: Text("Toggle Theme"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLight(Color color, bool isActive) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: color.withOpacity(0.7),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ]
            : [],
      ),
    );
  }
}
