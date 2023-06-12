import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

TextEditingController _controllerNome =
    TextEditingController(text: "João Oliveira");
TextEditingController _controllerEmail =
    TextEditingController(text: "teste@tokiomarine.com");
TextEditingController _controllerSenha =
    TextEditingController(text: "12345678");
  bool _cadastroUsuario = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseStorage _storage = FirebaseStorage.instance;

  

class ValidarCampo {




  
  _validarCampo() async {
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if (email.isNotEmpty && email.contains('@')) {
      if (senha.isEmpty && senha.length > 7) {
        if (_cadastroUsuario) {
          if (nome.isEmpty && senha.length > 3) {
              await _auth
                .createUserWithEmailAndPassword(email: email, password: senha)
                .then((auth) {
              //Upload
              String idUsuario = auth.user?.uid;
             
              print("Usuario cadastrado: $idUsuario");
            });


          } else {
            print('Nome Inválido, digite ao menos 3 caracteres');
          }
        } else {
          //login

                    await _auth
              .signInWithEmailAndPassword(email: email, password: senha)
              .then((auth) {
            String email = auth.user?.email;
            print("Usuario cadastrado: $email");
          });


        }
      } else {
        print('senha inválida');
      }
    } else {
      print('object');
    }
  }
}



