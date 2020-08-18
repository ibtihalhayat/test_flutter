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
        actions: <Widget>[                            // ce qui sera après le titre
          new Icon(Icons.account_circle)   // Icon ou IconButton(icon:Icon(Icons. ...)
        ],
        centerTitle: true,
        titleSpacing: 50, // la distance du titre
        elevation: 50.0,            //l'ambre au dessous de la App Bar
      ),
      body: new Container(
        color: Colors.amber,
        height: MediaQuery.of(context).size.height/2, // selon la taille de l'écran
        width: MediaQuery.of(context).size.width/2,
        margin: EdgeInsets.all(40), // à tous les cotés ou EdgeInsets.only(...)
      ),
    );
  }
}