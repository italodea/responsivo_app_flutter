import 'package:flutter/material.dart';

import 'WebAppBarResponsiveContent.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text("Responsivo App"),
          const SizedBox(width: 32),
          WebAppBarResponsiveContent(),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: null,
              child: Text(
                "Fazer login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white, width: 2.0)),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: null,
              child: Text(
                "Cadastre-se",
                style: TextStyle(color: Colors.black),
              ),
              style: OutlinedButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
