import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teste_tokio/app/views/commom_Widgets/custom_texField.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _checkbox = false;
  // TextEditingController _controllerNome =
  //     TextEditingController(text: 'Teste Tokio');
  // TextEditingController _controllerEmail =
  //     TextEditingController(text: 'teste@tokio.com');
  // TextEditingController _controllerSenha =
  //     TextEditingController(text: '12345678');

  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    double larguraTela = MediaQuery.of(context).size.width;

    return Scaffold(
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
          SizedBox(height: 10,),
            Text('Bem Vindo!', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Aqui você gerencia seus seguros e de seus familiares em poucos cliques!', style: TextStyle(color: Colors.white,), ),
                      ],
                    ),
                  ),
                ),
                  
                Center(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 120, bottom: 40) ,
                    child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(40),
                          width: 400,
                        
                          color: PaletaCores.corFSecundaria,
                          child: Column(children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                   
                                  },
                                  child: Text(
                                    'Entrar',
                                    style: TextStyle(
                                        color: PaletaCores.corPrimaria,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    
                                  },
                                  
                                  child: Text(
                                    'Cadastrar',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
        
                            //email
                            const CustomTextField(
                              label: 'CPF',
                            ),
        
                            //senha
                            const CustomTextField(
                              label: 'Senha',
                              labelStyle: TextStyle(color: Colors.white),
                              isSecret: true,
                            ),
        
                            SizedBox(
                              height: 12,
                            ),
        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(
                                    // tristate: true,
                                    value: _checkbox,
                                    onChanged: (newBool) {
                                      setState(() {
                                        _checkbox = newBool;
                                      });
                                    },
                                    fillColor:
                                        MaterialStateProperty.resolveWith<Color>(
                                            (Set<MaterialState> states) {
                                      if (states.contains(MaterialState.disabled)) {
                                        return Colors.green.withOpacity(.32);
                                      }
                                      return Colors.green;
                                    })),
                                Text(
                                  'Lembre-se de mim',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Esqueceu a senha?',
                                    style: TextStyle(
                                        color: PaletaCores.corPrimaria,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          //Botão redondo?
                            Container(
                              margin: EdgeInsets.only(top: 24),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [
                                    PaletaCores.corPrimaria,
                                    Colors.yellow[200]
                                  ],
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                                
                            ),
                          ]),
                          
        
               
        
                            
                      
                          
                          
                          
                        ),
                        ),
                  ),
                ),
                
                ),
                        
                
        
              ],
            ),
                       
            
              SizedBox(
               
          child: Column(
            children: [
              
              SvgPicture.asset('assets/images/logo-tokiomarine.svg', 
                      width: 20, // largura desejada  
                      height: 40, // altura desejada
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

       
       
    );
  }
}
