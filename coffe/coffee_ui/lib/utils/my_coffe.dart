import 'package:flutter/material.dart';

class MyCoffe extends StatelessWidget {
  const MyCoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset('lib/images/hot.jpg'),
      ),
    );
  }
}
