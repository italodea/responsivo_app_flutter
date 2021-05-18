import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text("Responsivo App"),
      centerTitle: true,
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){}),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
      ],
    );
  }
}