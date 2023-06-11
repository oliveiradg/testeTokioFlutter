import 'package:flutter/material.dart';
import 'package:teste_tokio/app/views/components/card_component.dart';
import 'package:teste_tokio/app/views/components/custom_drawer.dart';


import 'package:teste_tokio/app/views/components/topo_home_page.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset('assets/images/logo-tokio-BRANCO.png',
                height: 40,
                width: 40,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: PaletaCores.corFundo),
      body: Scaffold(
        backgroundColor: PaletaCores.corFundo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopoHomePage(),  
            Padding(
              padding: const EdgeInsets.only(left: 14,top: 8),
              child: Text('Cotar e Contratar', style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold),),
            ),
             
             // CARDS

            Padding(
              padding: const EdgeInsets.only(left: 12, top: 6,),
              child: Row(children: [
                //Componentização correta à fazer
                     CardComponent(
              color: PaletaCores.corFSecundaria,
              icon: Icons.car_rental,
              text: 'Automóvel',
            ),
            CardComponent(
              color: PaletaCores.corFSecundaria,
              icon: Icons.home_sharp,
              text: 'Residência',
            ),
            CardComponent(
              color: PaletaCores.corFSecundaria,
              icon: Icons.favorite_outline,
              text: 'Vida',
            ),
            CardComponent(
              color: PaletaCores.corFSecundaria,
              icon: Icons.medical_services_outlined,
              text: 'Acidentes',
            ),
            CardComponent(
              color: PaletaCores.corFSecundaria,
              icon: Icons.motorcycle_outlined,
              text: 'Moto',
            ),
            CardComponent(
              color: PaletaCores.corFSecundaria,
              icon: Icons.home_work_rounded,
              text: 'Empresas',
            ),


                                  

              
              ],
                
              ),
            ),        

          Padding(
              padding: const EdgeInsets.only(left: 14,top: 8),
              child: Text('Minha Familia', style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold),),
            ),

            Column(
        children: [
          Card(
      color: PaletaCores.corFSecundaria,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child:
          SizedBox(
            width: double.infinity,
            height: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_box_sharp,
                  color: Colors.white,
                  size: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Adicone aqui membros da sua familia e compartilhe o seguro com eles',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
            ),],
      ),
          Padding(
              padding: const EdgeInsets.only(left: 14,top: 8),
              child: Text('Contratados', style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold),),
            ),

            Column(
        children: [
          Card(
      color: PaletaCores.corFSecundaria,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child:
          SizedBox(
            width: double.infinity,
            height: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.face_sharp,
                  color: Colors.white,
                  size: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Você ainda não possui planos contratados',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
            ),],
    
          
        ),],
        ),
               
      ),
    );
  }
}
