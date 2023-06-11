import 'package:flutter/material.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({Key key}) : super(key: key);

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
                onPressed: () {},
              ),
            ),
          ],
        
      
    );
  }
}
