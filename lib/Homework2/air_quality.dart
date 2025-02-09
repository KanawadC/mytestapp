import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AirQuality extends StatefulWidget {
  const AirQuality({super.key});

  @override
  State<AirQuality> createState() => _AirQualityState();
}

class _AirQualityState extends State<AirQuality> {
  int aqi = 0;
  String city = '';
  double temperature = 0.0;

  @override
  void initState() {
    super.initState();
    fetchAirQuality();
  }

  Future<void> fetchAirQuality() async {
    try {
      var response = await http.get(Uri.parse(
          'https://api.waqi.info/feed/here/?token=4f8aaec483f0d430baa394d2a6b91309f5df874f'));

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body)['data'];

        setState(() {
          aqi = decoded['aqi'];
          city = decoded['city']['name'];
          temperature = decoded['iaqi']['t']['v'];
          print("$aqi $city $temperature");
        });
      } else {
        setState(() {
          city = "Error loading data";
        });
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
            "Air Quality Index (AQI)",
            style: TextStyle(color: Colors.black),
          )),
          backgroundColor: const Color.fromARGB(255, 144, 97, 219)),
      body: Center(
        child: Column(
          children: [
            Text(
              "$city",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 170,
              width: 370,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '$aqi',
                style: TextStyle(
                    fontSize: 85,
                    color: const Color.fromARGB(255, 248, 231, 169),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              getAqiMessage(aqi),
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: getAqiTextColor(aqi)),
            ),
            SizedBox(height: 10),
            Text('temperature: $temperature°C',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                fetchAirQuality();
              },
              child: Text(
                'Refresh',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                backgroundColor: const Color.fromARGB(234, 18, 221, 191),
              ),
            )
          ],
        ),
      ),
    );
  }

  String getAqiMessage(int aqi) {
    if (aqi <= 50) return 'Good';
    if (aqi <= 100) return 'Moderate';
    if (aqi <= 150) return 'Unhealthy for Sensitive Groups';
    if (aqi <= 200) return 'Unhealthy';
    if (aqi <= 300) return 'Very Unhealthy';
    return 'Hazardous';
  }

  Color getAqiTextColor(int aqi) {
    if (aqi <= 50) return Colors.green;
    if (aqi <= 100) return const Color.fromARGB(255, 247, 228, 61);
    if (aqi <= 150) return Colors.orange;
    if (aqi <= 200) return Colors.red;
    if (aqi <= 300) return Colors.purple;
    return const Color.fromARGB(255, 136, 13, 42);
  }
}
