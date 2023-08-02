import 'package:flutter/material.dart';
import 'package:teste_tokio/utils/color_theme_utils.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<String> _menuItems = ['Minha Conta', 'Configurações', 'Sair'];
  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    Widget _buildDrawerBack() => Container(
          color: PaletaCores.corFundo,
        );

    return Drawer(
      backgroundColor: Colors.white,
      child: Stack(
        children: [
          _buildDrawerBack(),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 32, top: 16),
                height: 170,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Olá,',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/avatar.jpg'),
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 12),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Joao Oliveira',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Minha Conta',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                //dropdaw menu

                                                PopupMenuButton(
                                                  icon: Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Colors.white,
                                                  ),
                                                  itemBuilder: (context) {
                                                    return _menuItems
                                                        .map((String item) {
                                                      return PopupMenuItem<
                                                          String>(
                                                        value: item,
                                                        child: Text(item),
                                                      );
                                                    }).toList();
                                                  },
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.car_rental,
                  color: Colors.green,
                ),
                title: Text(
                  'Automóvel',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.home_repair_service,
                  color: Colors.green,
                ),
                title: Text(
                  'Residencial',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.business,
                  color: Colors.green,
                ),
                title: Text(
                  'Empresarial',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                title: Text(
                  'Minha Conta',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/Login');
                
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
                title: Text(
                  'Ajuda',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Color(0xFF046651),
                ),
                title: Text(
                  'Sair',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/LoginView');
                },
              ),
                  Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [PaletaCores.corPrimaria, Colors.yellow[200]]),
      ),
      height: alturaTela * 0.3,
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
              radius: 20,
              backgroundColor: Colors.white,
            ),
            
            Text('Dúvidas', style: TextStyle(color: Colors.white, fontSize: 14)),
            Text('Converse agora com a Matris', style: TextStyle(color: Colors.white, fontSize: 10)),
            Text('e tire suas dúvidas agora mesmo!', style: TextStyle(color: Colors.white, fontSize: 10)),
          ],
        ),
      ),
    ),
            ],
          ),
        ],
      ),
     
    
    );

  }
}
