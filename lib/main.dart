

import 'package:flutter/material.dart';

import 'package:teste_tokio/app/views/login_view.dart';



void main() => runApp(
const  MyApp(), // Wrap your app
  
);

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
   
      debugShowCheckedModeBanner: false,
      title: 'AppTeste Tokio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),

      
      home: LoginView(),

    );
  }
}








