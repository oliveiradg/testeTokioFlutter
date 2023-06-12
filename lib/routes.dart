// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:teste_tokio/app/views/home_page_view.dart';
import 'package:teste_tokio/app/views/login_view.dart';

class Rotas {
  static Route<dynamic> gerarRota(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => LoginView(),
        );
      case "/LoginView":
        return MaterialPageRoute(
          builder: (_) => LoginView(),
        );
      case "/HomePageView":
        return MaterialPageRoute(
          builder: (_) => HomePageView(),
        );
    }
    return _erroRota();
  }
  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text('Tela não encontrada'),
        ),
        body: Center(
          child: Text('Tela não encontrada'),
        ),
      );
    });
  }

}
