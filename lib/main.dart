//import 'dart:html';

import 'package:flutter/cupertino.dart';
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
bool couleur=false;
class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white60,
      appBar: new AppBar(
        title: new Text('Mon Application'),
        leading: new Icon(Icons.arrow_back_ios),
        // ce qui sera avant le titre à gauche
        actions: <Widget>[
          // ce qui sera après le titre
          new Icon(Icons.account_circle)
          // Icon ou IconButton(icon:Icon(Icons. ...)
        ],
        centerTitle: true,
        titleSpacing: 50,
        // la distance du titre
        elevation: 50.0, //l'ambre au dessous de la App Bar
      ),
      body: Column(
        children: <Widget>[
          new Text('Salut',
          style: TextStyle(fontSize:25,color: couleur ? Colors.red : Colors.green),),
          new RaisedButton(onPressed: changerCouleur,
          child: Text('Cliquez ICI'),// texte que sera dans le boutton
            textColor: Colors.white,
            color:Colors.blueGrey,
          )
        ],
      )
        );
  }

  void changerCouleur() {
    setState(() {
      couleur = !couleur;
    });
  }
}
