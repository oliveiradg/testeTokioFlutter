import 'package:flutter/material.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

class HomePageView extends StatelessWidget {

  const HomePageView({ Key key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
        double alturaTela = MediaQuery.of(context).size.height;
       return Scaffold(
           appBar: AppBar(title: const Text(''),
           backgroundColor: Colors.black,
           ),
           body: Scaffold(
            backgroundColor: PaletaCores.corFundo,
              body: Container(
                    decoration: BoxDecoration(gradient: LinearGradient(colors:[PaletaCores.corPrimaria, Colors.yellow[200] ] ),),
                    height: alturaTela * 0.1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        
                        children: [
                          CircleAvatar(
                            
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                         
                              children: [
                                Text('Bem Vindo!', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                Text('Joao Oliveira', style: TextStyle(color: Colors.white,), ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
           
           ),),);
  }
}