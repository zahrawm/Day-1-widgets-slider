import 'package:coffee_ui/utils/coffee_type.dart';
import 'package:coffee_ui/utils/my_coffe.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType = [
    ['Cupccion', true],
    ['Latte', true]
  ];

  void coffeeTypeSelected() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home),
          Icon(Icons.favorite),
          Icon(Icons.notification_add)
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find the best coffee for you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search your coffee',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeType(
                    coffetype: 'Latte',
                    isSelected: true,
                    onTap: coffeeTypeSelected,
                  ),
                  CoffeeType(
                    coffetype: 'Cuppcino',
                    isSelected: false,
                    onTap: coffeeTypeSelected,
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCoffe(),
                MyCoffe(),
                MyCoffe(),
                MyCoffe(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
