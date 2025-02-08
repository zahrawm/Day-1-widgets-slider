import 'package:flutter/material.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150,
      title: Text("Sunset Dinner"),
      floating: false,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(),
    );
  }
}
