import 'package:flutter/material.dart';
import '../diagram.dart';
class ingame extends StatefulWidget {
  @override
  _ingameState createState() => _ingameState();
}

class _ingameState extends State<ingame>{

  var characters = "abcdefghijklmnopqrstuvwxyz".toUpperCase();
   late var e;
  var word = "".toUpperCase();
  var tries = 0;
   String text = 'wrong';
   List<String> selectedchar = [];

  Widget build(context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('calendar'),
        actions:<Widget> [

          IconButton(onPressed:(){}, icon: Icon(
            Icons.menu_outlined,
            size: 20.0,
          ))


        ],

      ),
      body: buttons(),
    );


  }
  Widget buttons(){
    return Column(

        children: [
      Expanded(
      flex: 3,


      child: Column(
        children:<Widget>[

           Expanded(
            flex:4,

              child: Stack(
                children: [
                  animation(diagrams.hangerrightleg,tries >= 1),
             animation(diagrams.hangerleftleg,tries >= 2),
             animation(diagrams.hangermiddle,tries >= 3),
             animation(diagrams.hangerhalfupperpart,tries >= 4),
             animation(diagrams.halffullpart,tries >= 5),
             animation(diagrams.upperpart,tries >= 6),
             animation(diagrams.lefthand,tries >= 7),
             animation(diagrams.righthand,tries >= 8),
             animation(diagrams.leftleg,tries >= 9),
             animation(diagrams.rightleg,tries >= 10),

                      ],

              ))




                ],



              )),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              color:Colors.black,
              
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:word.split("").map((e) => guess(e,
                  !selectedchar.contains(e.toUpperCase())
                  )).toList(),

            )),
          ),
          Expanded(
              flex:4,
              child: Container(

            color: Colors.orangeAccent,
            padding: EdgeInsets.all(1.0),
            child: GridView.count(
              physics:  const NeverScrollableScrollPhysics(),
              crossAxisCount:7,
            mainAxisSpacing: 2,
                crossAxisSpacing: 5,
              children:characters.split("").map<Widget>((e){
                return ElevatedButton(
                    onPressed: selectedchar.contains(e.toUpperCase())?null:(){
                      setState(() {
                        selectedchar.add(e.toUpperCase());
                        if(!word.split('').contains(e.toUpperCase())){
                          tries++;
                        }



                      });
                    }, child: Text(e));
  }).toList(),

            )

      ))
    ]
    );

         /* ElevatedButton(onPressed: (){}, child: Text('A')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('B')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('C')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('D')),
          SizedBox(height:8.0,width:8.0,),
          ElevatedButton(onPressed: (){}, child: Text('E')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('F')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('G')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('H')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('I')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('J')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('K')),

          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('L')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('M')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('N')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('O')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('P')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('Q')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('R')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('S')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('T')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('U')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('V')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('W')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('X')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('Y')),
          SizedBox(height: 8.0,width: 8.0,),
          ElevatedButton(onPressed: (){}, child: Text('Z')),*/









  }
 Widget guess( String char, bool visible) {


      return Container(
        alignment: Alignment.center,


          height: 35.0,
          width: 35.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Visibility(
            visible: !visible,
            child: Text(char, style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16.0,
              color: Colors.lightGreenAccent,
            ),),
          )
      );
    }
    Widget animation( String location,bool visible){
    return Container(
      width: 250,
      height: 250,
      child: Visibility(
       visible: visible,
        child:Image.asset(location) ,

      ),

    );

  }
}







        /*Container(

      color: Colors.orange,
      margin: EdgeInsets.only(top:370.0, bottom: 80.0,left:70.0,right: 70.0),
        padding: EdgeInsets.only(bottom: 30.0),

      child:Visibility(
          child: ,

    );*/



