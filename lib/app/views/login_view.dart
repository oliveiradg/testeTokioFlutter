import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teste_tokio/app/views/components/card_login.dart';
import 'package:teste_tokio/app/views/components/custom_action_button.dart';

import 'package:teste_tokio/utils/color_theme_utils.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {


  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    double larguraTela = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: PaletaCores.corFundo,
          width: larguraTela,
          height: alturaTela,
          child: SingleChildScrollView(
            child: Column(
          
            children: 
              [Stack(
                children: [
                  Positioned(
                    
                    child: Container(
                      decoration: BoxDecoration(gradient: LinearGradient(colors:[PaletaCores.corPrimaria, Colors.yellow[200] ] ),),
                      width: larguraTela,
                      height: alturaTela * 0.5,
                      
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        
                  
                        children: [
                            SvgPicture.asset('assets/images/logo-tokiomarine.svg', 
                            width: 10, 
                            height: 20, 
            ),
            SizedBox(height: 8,),
              Text('Bem Vindo!', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Text('Aqui você gerencia seus seguros e de seus familiares em poucos cliques!', style: TextStyle(color: Colors.white,), ),
                        ],
                      ),
                    ),
                  ),
                    
                  Center(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(top: 120, bottom: 40) ,
                      child:       Stack(
                        clipBehavior: Clip.none,
          
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>
              [
               
                CardLogin(),
             
              ],
            ),
            Positioned(
              child: CustomActionButton(),
              right: 30,
              left: 10,
              bottom: -20,
            ),
          ],
        )
                      
                    ),
                  ),
                  
                  ),
                          
                  
          
                ],
              ),
                         
              
                SizedBox(
                 
            child: Column(
              children: [
                
                Image.asset('assets/images/logo-tokio-BRANCO.png', 
                        width: 140,  
                        height: 120, 
            ),
            SizedBox(height: 26,),
              Text('Acesse através das Redes Sociais', style: TextStyle(color: Colors.white,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.g_translate_outlined , color: Colors.white,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook, color: Colors.white,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.email, color: Colors.white,),
                    onPressed: () {},
                  ),
                ],
              )
              ],
            ),
                )
            ],
          
            
                ),
          ),
          ),
    
         
         
      ),
    );
  }
}
