import 'package:flutter/material.dart';
import 'package:teste_tokio/app/controller/validarCampo.dart';
import 'package:teste_tokio/app/views/components/custom_texField.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

TextEditingController _controllerNome =
    TextEditingController(text: "João Oliveira");
TextEditingController _controllerEmail =
    TextEditingController(text: "teste@tokiomarine.com");
TextEditingController _controllerSenha =
    TextEditingController(text: "12345678");

class CardLogin extends StatefulWidget {
  const CardLogin({Key key}) : super(key: key);

  @override
  State<CardLogin> createState() => _CardLoginState();
}

class _CardLoginState extends State<CardLogin> {
  bool _cadastroUsuario = false;
  @override
  Widget build(BuildContext context) {
    bool _checkbox = false;

   

    return Card(
      color: PaletaCores.corFSecundaria,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(40),
        width: 400,
        child: Column(
          children: [
             // Imaem perfil com botão

    Visibility(
      visible: _cadastroUsuario,
        child: ClipOval(
      child: Image.asset(
        'assets/images/perfil.png',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    )),

    SizedBox(
      height: 8,
    ),

   
            Row(
              children: [
               
                  Text(
                    'Login',
                    style: TextStyle(
                        color: PaletaCores.corPrimaria,
                        fontWeight: FontWeight.bold),
                  ),
                  Switch(value: _cadastroUsuario, 
                  onChanged: 
                  
                  (value) {
                    setState(() {
                      _cadastroUsuario = value;
                    });
                  }),
                Text(
                    'Cadastrar',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                
              ],
            ),
            SizedBox(
              height: 12,
            ),

             Visibility(
      visible: _cadastroUsuario,
      child: OutlinedButton(
        onPressed: () {},
        child: Text('Selecionar Foto'),
      ),
    ),

    SizedBox(height: 8,),
        //Caixa de texto Nome para cadastro
    Visibility(
      visible: _cadastroUsuario,
      child: CustomTextField(
        label: 'Nome',
       

      ),
      ),
    

            //email
            const CustomTextField(
              label: 'Email',
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

           Visibility(
      visible: _cadastroUsuario,
            child:   //Botão
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                ValidarCampo();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: PaletaCores.corPrimaria),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                 "Cadastro" ,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
           ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    tristate: true,
                    value: _checkbox,
                    onChanged: (newBool) {
                      setState(() {
                        _checkbox = newBool;
                      });
                    },
                    fillColor: MaterialStateProperty.resolveWith<Color>(
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
                SizedBox(height: 8,),
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
          ],
        ),
      ),
    );
  }
}
