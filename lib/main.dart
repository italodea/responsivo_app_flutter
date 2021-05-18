import 'package:flutter/material.dart';
import 'package:responsivo_app/pages/home/HomePage.dart';


void main(){
  runApp(
    ResponsivoApp()
  );
}

class ResponsivoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: "Responsivo App",
      home: HomePage(),
    );
  }
}