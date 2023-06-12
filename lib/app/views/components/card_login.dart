

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_tokio/app/models/usuario_model.dart';
import 'package:teste_tokio/app/views/components/custom_texField.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';



class CardLogin extends StatefulWidget {
  const CardLogin({Key key}) : super(key: key);

  @override
  State<CardLogin> createState() => _CardLoginState();
}

class _CardLoginState extends State<CardLogin> {
  bool _cadastroUsuario = false;
  bool _checkbox = false;



  TextEditingController _controllerNome = TextEditingController(text: "Joao Oliveira");
  TextEditingController _controllerEmail = TextEditingController(text: "teste@testeTokio.com");
  TextEditingController _controllerSenha = TextEditingController(text: "12345678");
 
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseStorage _storage = FirebaseStorage.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Uint8List _arquivoImagemSelecionado;

  _selecionarImagem() async {

    //Selecionar arquivo
    FilePickerResult resultado = await FilePicker.platform.pickFiles(
      type: FileType.image
    );

    //Recuperar o arquivo
    setState(() {
      _arquivoImagemSelecionado = resultado?.files.single.bytes;
    });

  }

  _uploadImagem(Usuario usuario){

    Uint8List arquivoSelecionado = _arquivoImagemSelecionado;
    if( arquivoSelecionado != null ){
      Reference imagemPerfilRef = _storage.ref("imagens/perfil/${usuario.idUsuario}.jpg");
      UploadTask uploadTask = imagemPerfilRef.putData(arquivoSelecionado);

      uploadTask.whenComplete(() async {

        String urImagem = await uploadTask.snapshot.ref.getDownloadURL();
        usuario.urlImagem = urImagem;

        final usuariosRef = _firestore.collection("usuarios");
        usuariosRef.doc(usuario.idUsuario)
        .set( usuario.toMap() )
        .then((value){

          //tela principal
          Navigator.pushReplacementNamed(context, "/home");


        });

      });

    }

  }

  _validarCampos() async {

    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if( email.isNotEmpty && email.contains("@") ){
      if( senha.isNotEmpty && senha.length > 7 ){

        if( _cadastroUsuario ){

          if( _arquivoImagemSelecionado != null ){

            //Cadastro
            if( nome.isNotEmpty && nome.length >= 3 ){

              await _auth.createUserWithEmailAndPassword(
                  email: email,
                  password: senha
              ).then((auth){

                //Upload
                String idUsuario = auth.user?.uid;
                if( idUsuario != null ){

                  Usuario usuario = Usuario(
                      idUsuario,
                      nome,
                      email
                  );
                  _uploadImagem(usuario);

                }
                //print("Usuario cadastrado: $idUsuario");

              });

            }else{
              print("Nome inválido, digite ao menos 3 caracteres");
            }

          }else{
            print("Selecione uma imagem");
          }

        }else{

          //Login
          await _auth.signInWithEmailAndPassword(
              email: email,
              password: senha
          ).then((auth){

            //tela principal
            Navigator.pushReplacementNamed(context, "/HomePageView");

          });

        }

      }else {
        print("Senha inválida");
      }
    }else{
      print("Email inválido");
    }

  }

  @override
  Widget build(BuildContext context) {
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
                  child: _arquivoImagemSelecionado != null
                      ? Image.memory(
                          _arquivoImagemSelecionado,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
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
                Switch(
                    value: _cadastroUsuario,
                    onChanged: (value) {
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
                onPressed: () {
                  setState(() {
                    _selecionarImagem();
                  });
                },
                child: Text('Selecionar Foto'),
              ),
            ),

            SizedBox(
              height: 8,
            ),
            //Caixa de texto Nome para cadastro
            Visibility(
              visible: _cadastroUsuario,
              child: CustomTextField(
                label: 'Nome',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),

            //email
            const CustomTextField(
              label: 'Email',
              labelStyle: TextStyle(color: Colors.white),
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

 
             //Botão
                  Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_cadastroUsuario) { 
                      _validarCampos();
                    } else
                      _validarCampos();
                    

                  },
                  style: ElevatedButton.styleFrom(
                      primary: PaletaCores.corPrimaria),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      _cadastroUsuario ? "Cadastrar" : "Entrar",
                     
                      style: TextStyle(fontSize: 18),
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
                SizedBox(
                  height: 8,
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
