import 'package:flutter/material.dart';
import 'package:teste_tokio/app/views/components/custom_texField.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

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
            Row(
              children: [
                Text(
                    'Entrar',
                    style: TextStyle(
                        color: PaletaCores.corPrimaria,
                        fontWeight: FontWeight.bold),
                  ),

                  Switch(
                    value: _cadastroUsuario, 
                    onChanged: (bool valor){
                      setState(() {
                        _cadastroUsuario = valor;
                      });
                    }
                    
                    ),
                
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
