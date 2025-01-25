import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _currentValue.toString(),
            style: TextStyle(fontSize: 40),
          ),
          Slider(
              value: _currentValue,
              min: 0,
              max: 20,
              divisions: 10,
              label: _currentValue.toString(),
              thumbColor: Colors.red[300],
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              })
        ],
      ),
    );
  }
}
