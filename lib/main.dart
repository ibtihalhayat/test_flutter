import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'first app',
      theme: new ThemeData(
        primarySwatch: Colors.amber
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return new _Home() ;
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white60,
      appBar: new AppBar(
        title: new Text('Mon Application'),
        leading: new Icon(Icons.arrow_back_ios), // ce qui sera avant le titre à gauche
        actions: [
          new Icon(Icons.account_circle) // ce qui sera après le titre
        ],
        centerTitle: true,
        elevation: 50.0, //l'ambre au dessous de la App Bar
      ),
    );
  }
}