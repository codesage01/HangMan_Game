import 'package:flutter/material.dart';
import 'package:hangman/src/screens/button.dart';
import 'package:hangman/src/screens/ingame.dart';

//import '../src/screens/Play.dart';
//import '../src/screens/two.dart';

class Home extends StatelessWidget{
  Widget build(context){
  return  Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("lib/src/images/landscape1.jpg"),
        fit: BoxFit.cover,


        )
      ),
     // margin:EdgeInsets.all(8.0) ,
      child: Column(
        children: <Widget>[
          Play(context),
          CustomGame(),
          TwoPlayers(),
        ],

  ),
    );




  }
  Widget Play(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.play_circle,
          color: Colors.white,
          size: 25.0,

        ),
        style: buttonPrimary,

        label:Text('Play',
            style:TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900,fontStyle: FontStyle.normal)),
        onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder:(context) =>ingame()));
    },

      ),
    );






    }
  Widget CustomGame() {
    return Container(
      margin: EdgeInsets.only(top: 70.0),
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.man,
          color: Colors.white,
          size: 25.0,

        ),
        style: buttonPrimary,

        label: Text('CustomGame',
            style: TextStyle(color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal)),
        onPressed: () {},

      ),
    );
  }
  Widget TwoPlayers() {
    return Container(
      margin: EdgeInsets.only(top: 80.0),
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.looks_two_outlined,
          color: Colors.white,
          size: 25.0,

        ),
        style: buttonPrimary,

        label: Text('TwoPlayers',
            style: TextStyle(color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal)),
        onPressed: () {},

      ),
    );
  }



  }


