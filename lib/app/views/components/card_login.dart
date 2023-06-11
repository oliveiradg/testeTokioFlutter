import 'package:flutter/material.dart';
import 'package:teste_tokio/app/views/components/custom_texField.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

class CardLogin extends StatefulWidget {
  const CardLogin({Key key}) : super(key: key);

  @override
  State<CardLogin> createState() => _CardLoginState();
}

class _CardLoginState extends State<CardLogin> {
  @override
  Widget build(BuildContext context) {
      bool _checkbox = false;
  // TextEditingController _controllerNome =
  //     TextEditingController(text: 'Teste Tokio');
  // TextEditingController _controllerEmail =
  //     TextEditingController(text: 'teste@tokio.com');
  // TextEditingController _controllerSenha =
  //     TextEditingController(text: '12345678');
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
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                        color: PaletaCores.corPrimaria,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
            //Botão redondo
          ],
        ),
      ),
    );
  }
}
