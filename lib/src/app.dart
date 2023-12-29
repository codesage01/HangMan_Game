import 'package:flutter/material.dart';
import '../src/home.dart';
 class App  extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title:'WElCOME TO HAMGMAN',
      home: Scaffold(
        body: Home(),
      )
    );

  }



}
