import 'package:flutter/material.dart';

class Pantalla02 extends StatefulWidget {
  final String cedula;
  final String nombre;
  final String sueldoNeto;
  const Pantalla02(
      {super.key,
      required this.cedula,
      required this.nombre,
      required this.sueldoNeto});

  @override
  State<Pantalla02> createState() => _Pantalla02State();
}

class _Pantalla02State extends State<Pantalla02> {
  TextEditingController controllerCedula = TextEditingController();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerSueldoNeto = TextEditingController();
  @override
  void initState() {
    // Valor inicial
    super.initState();
    controllerCedula.text = widget.cedula;
    controllerName.text = widget.nombre;
    controllerSueldoNeto.text = widget.sueldoNeto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10),
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Datos personales', textAlign: TextAlign.center),
            Row(
              children: [
                const Text('Cedula:'),
                const SizedBox(width: 38),
                Expanded(
                  child: TextField(
                    controller: controllerCedula,
                    readOnly: true,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      //border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Nombre:'),
                const SizedBox(width: 30),
                Expanded(
                  child: TextField(
                    controller: controllerName,
                    readOnly: true,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      //border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Sueldo Neto:'),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: controllerSueldoNeto,
                    readOnly: true,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      //border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                child: const Text('Inicio')),
          ],
        ),
      ),
    );
  }
}
