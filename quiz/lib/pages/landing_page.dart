import "package:flutter/material.dart";

// StatelessWidget notifies user when something changes
//we do not have states to update so were leave with extended widgets
class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // acts like piece of paper with green color
    return new Material(
      color:Colors.redAccent,
      child:new InkWell(
        onTap: () => print("Tap dee button"),
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            new Text("Let's Quizz", style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight:FontWeight.bold,),),
            new Text("Press dis to start", style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold,),),
          ],
        ),
      ),
    );
  } 
}