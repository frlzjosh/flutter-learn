import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar:  new AppBar(title: new Text("What's Good Cryp"), backgroundColor: Colors.red[200] ),
        body: new Container(
            child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new IconButton(
                      icon: new Icon(Icons.money_off , color: Colors.blueAccent),
                      iconSize: 110.0,
                      onPressed:(){ Navigator.of(context).pushNamed("/");}
                    ),
                    new Text("Home Page"),
                    new IconButton(
                      icon: new Icon(Icons.attach_money, color: Colors.teal[200]),
                      iconSize:110.0,
                      onPressed:() {Navigator.of(context).pushNamed("/Crypto Page");}
                    ),
                    new Text("Crypto Market"),
                  ],
                )
            )
        )
    );
  }
}