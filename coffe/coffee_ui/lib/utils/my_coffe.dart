import 'package:flutter/material.dart';

class MyCoffe extends StatelessWidget {
  const MyCoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'lib/images/hot.jpg',
                  )),
              Text('Caffe'),
              Text('Latte'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$3345'),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4)),
                    child: Icon(Icons.add),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
