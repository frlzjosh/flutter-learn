import 'package:flutter/material.dart';
import './pages/second_page.dart';
import './functions/jason_stuff.dart';
import './pages/crypto_demo.dart';

// API CALLS
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // Testing the getCurrencies function
  // We wait for the currency data to arrive
  List currencies = await getCurrencies();
  // Before printing it to the Console
  print(currencies);

  runApp(new MaterialApp(
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      "/SecondPage": (BuildContext context) => new SecondPage(),
      "/Crypto Page":(BuildContext context)=> new CryptoListWidget(currencies)
    }
  ));
}

class HomePage extends StatelessWidget{

 @override
 Widget build(BuildContext context){
   return new Scaffold(
     appBar:  new AppBar(title: new Text("Home"), backgroundColor: Colors.red[200] ),
     body: new Container(
       child: new Center(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new IconButton(
               icon: new Icon(Icons.attach_money , color: Colors.redAccent),
               iconSize: 110.0,
               onPressed:() {
                 Navigator.of(context).pushNamed("/SecondPage");
               }
             ),
             new Text("Seoncd Page"),
             new IconButton(
               icon: new Icon(Icons.airplanemode_active , color: Colors.redAccent),
               iconSize: 110.0,
               onPressed:() {
                 Navigator.of(context).pushNamed("/Crypto Page");
               }
             ),
             new Text("Crypto Page")
           ],
         )
       )
     )
   );
 }
}


