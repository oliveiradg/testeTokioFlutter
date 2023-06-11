import 'package:flutter/material.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

class TopoHomePage extends StatelessWidget {
  const TopoHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double alturaTela = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [PaletaCores.corPrimaria, Colors.yellow[200]]),
        ),
        height: alturaTela * 0.1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
                radius: 30,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bem Vindo!',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Joao Oliveira',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
