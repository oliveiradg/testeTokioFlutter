
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
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),

      
      home: LoginView(),

    );
  }
}
















// import 'package:flutter/material.dart';
// import 'package:teste_tokio/app/views/login_view.dart';

// void main() {
  
//   runApp(MaterialApp(
//     title: 'Teste Tokio Marine',
     

//     home: LoginView(),
//     debugShowCheckedModeBanner: false,

  
//   ),

  
//   );

  
// }

