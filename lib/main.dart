

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';




import 'package:teste_tokio/routes.dart';



void main() async {

   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(

     options: FirebaseOptions(
      apiKey: "AIzaSyBawqbpx6ktaFl9nTqtvRWSWWzPq7U_dzA",
      authDomain: "testetokio-d1a33.firebaseapp.com",
      projectId: "testetokio-d1a33",
      storageBucket: "testetokio-d1a33.appspot.com",
      messagingSenderId: "912012547274",
      appId: "1:912012547274:web:c9f58549642e8a09c25033"
     )
   

   );
  runApp(MyApp());
}
  

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
   
      debugShowCheckedModeBanner: false,
      title: 'AppTeste Tokio',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),

      
     // home: LoginView(),

     initialRoute: "/LoginView",
     onGenerateRoute: Rotas.gerarRota,

    );
  }
}








