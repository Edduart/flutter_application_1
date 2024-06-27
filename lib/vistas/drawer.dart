import 'package:flutter/material.dart';
import 'pantalla01.dart';
import 'pantalla02.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: const EdgeInsets.all(0),
      children: [
        const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage("images/logo-iujo.PNG"),
                fit: BoxFit.scaleDown,
              ),
            ),
            child: Text(
                'Barra Lateral') //BoxDecoration //UserAccountDrawerHeader
            ), //DrawerHeader
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text(' Bienvenido '),
          onTap: () {
            // Navigator.pop(context);
            //Navigator.pushNamed(context, './home');
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);

          },
        ),
        ListTile(
          leading: const Icon(Icons.book),
          title: const Text('Pantalla 1 '),
          onTap: () {
            //Navigator.of(context).pop();
            //Navigator.pushNamed(context, './pantalla01');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Pantalla01()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.workspace_premium),
          title: const Text(' pantalla 2 '),
          onTap: () {
            //Navigator.pop(context);
            //Navigator.pushNamed(context, './pantalla02');
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Pantalla02(
                        cedula: '',
                        nombre: '',
                        sueldoNeto: '',
                      )),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Salir'),
          onTap: () {
            //Navigator.pop(context);
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
        ),
      ],
    ));
  }
}
