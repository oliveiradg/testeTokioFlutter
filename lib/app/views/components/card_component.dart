// import 'package:flutter/material.dart';
// import 'package:teste_tokio/utils/color_theme_utils.dart';

// class CardComponent extends StatelessWidget {
//   final String icone;
//   final String texto;

//   //*** A Fazer: Criar a componentização corretamente ***


//   CardComponent({this.icone, this.texto});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: PaletaCores.corFSecundaria,
//       elevation: 2.0,
//       shape: RoundedRectangleBorder(
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             width: 60,
//             height: 60,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconTheme(
//                   data: IconThemeData(
//                     color: Colors.white,
//                   ),
//                   child: ShaderMask(
//                     shaderCallback: (Rect bounds) {
//                       return LinearGradient(
//                         colors: [Color(0xFF128A44), Color(0xffFFC371)],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                       ).createShader(bounds);
//                     },
//                     child: Icon(
//                       Icons.car_rental_outlined,
//                       size: 22,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: RichText(
//                     text: TextSpan(
//                       text: 'Automóvel',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;

  CardComponent({ this.color, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconTheme(
                data: IconThemeData(
                  color: Colors.white,
                ),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [Color(0xFF128A44), Color(0xffFFC371)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: Icon(
                    icon,
                    size: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: text,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
