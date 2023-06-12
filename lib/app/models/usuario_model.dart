import 'package:flutter/material.dart';

class Usuario {
  String idUsuario;
  String nome;
  String email;
  String urlImagem;

  Usuario(this.idUsuario, this.nome, this.email, {this.urlImagem = ''});

  
Map<String, dynamic> toMap(){

  Map<String, dynamic> map = {
    'idUsuario' : this.idUsuario,
    'nome' : this.nome,
    'email' : this.email,
    'urlImagem' : this.urlImagem,
  };

  return map;
}



}
