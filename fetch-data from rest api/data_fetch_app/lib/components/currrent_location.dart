import 'package:flutter/material.dart';

class CurrrentLocation extends StatelessWidget {
  const CurrrentLocation({super.key});
  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Your Current Location'),
              content: TextField(
                decoration: InputDecoration(hintText: 'Search address...'),
              ),
              actions: [
                MaterialButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                MaterialButton(
                    child: Text('Save'),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () => openLocationSearchBox(context),
              child: Text(
                'Deliver Now',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Row(
            children: [
              Text(
                'Ashaiman',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down,
              )
            ],
          )
        ],
      ),
    );
  }
}
