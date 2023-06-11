import 'package:flutter/material.dart';

class PaletaCores {

  static const Color corFundo = Color(0xff1F2429);
  static const Color corFSecundaria = Color(0xff2B2A3A);
  static const Color corPrimaria = Color(0xff46B08C);
  static const Gradient gradiente = LinearGradient(
    colors: [PaletaCores.corPrimaria, Color(0xffFFC371)], 
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  

}