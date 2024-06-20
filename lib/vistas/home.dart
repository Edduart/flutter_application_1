// usar < flutter pub get > para cargar los paquetes
import 'package:flutter/material.dart';
import './pantalla01.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Electiva I',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              // ignore: prefer_const_constructors
              seedColor: Color.fromARGB(255, 40, 241, 0)),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Formulario de Captura de datos'),
      );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _HomeState();
}

class _HomeState extends State<MyHomePage> {
  //variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text('Navegacion entre Pantallas'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fondo.PNG"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset("images/logo-iujo.png"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Bienvenidos a Navegacion entre pantalls Flutter.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Pantalla01()));
                      },
                      child: const Text('Entrar')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Pantalla01()));*/
                      },
                      child: const Text('Salir')),
                ]),
          ],
        ),
      ),
    );
  }
}
