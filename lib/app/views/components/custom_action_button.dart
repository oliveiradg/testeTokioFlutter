import 'dart:io';

import 'package:flutter/material.dart';

import 'package:teste_tokio/utils/color_theme_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';


class CustomActionButton extends StatefulWidget {
  const CustomActionButton({Key key}) : super(key: key);

  @override
  State<CustomActionButton> createState() => _CustomActionButtonState();
}

class _CustomActionButtonState extends State<CustomActionButton> {

  void _abrirURL() async {
    const url = 'https://www.tokiomarine.com.br/'; // URL do site que deseja abrir

    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  void _abrirWebView() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebView(
          initialUrl: 'https://www.tokiomarine.com.br/', // URL do site que deseja abrir
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 24),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [PaletaCores.corPrimaria, Colors.yellow[200]],
            ),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_forward),
            color: Colors.white,
            onPressed: () {
              setState(
                () {
                          if (Platform.isAndroid || Platform.isIOS) {
          _abrirWebView();
        } else {
          _abrirURL();
        }
      },
              );
            },
          ),
        ),
      ],
    );
  }
}
