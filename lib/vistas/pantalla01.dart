import 'package:flutter/material.dart';
import './pantalla02.dart';
import 'drawer.dart';

const List<String> list = <String>['Masculino', 'Femenino', 'Otro'];

class Pantalla01 extends StatefulWidget {
  const Pantalla01({super.key});
  @override
  State<Pantalla01> createState() => _Pantalla01State();
}

class _Pantalla01State extends State<Pantalla01> {
  String sexo = list.first;
  final TextEditingController controllerCedula = TextEditingController();
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerDireccion = TextEditingController();
  final TextEditingController controllerTelefono = TextEditingController();
  final TextEditingController controllerSueldoBase = TextEditingController();
  final TextEditingController controllerComision = TextEditingController();
  final TextEditingController controllerDeuda = TextEditingController();
  final TextEditingController controllerSueldoNeto = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),
      appBar: AppBar(
        title: const Text('Primera Pantalla'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fondo.PNG"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            const Text('Datos personales', textAlign: TextAlign.center),
            Row(
              children: [
                const Text('Cedula:'),
                const SizedBox(width: 42),
                Expanded(
                  child: TextField(
                    controller: controllerCedula,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
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
                const SizedBox(width: 35),
                Expanded(
                  child: TextField(
                    controller: controllerName,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
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
                const Text('Direccion:'),
                const SizedBox(width: 23),
                Expanded(
                  child: TextField(
                    controller: controllerDireccion,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
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
                const Text('Telefono:'),
                const SizedBox(width: 27),
                Expanded(
                  child: TextField(
                    controller: controllerTelefono,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
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
                const Text('Sexo:'),
                const SizedBox(width: 53),
                Expanded(
                  child: DropdownButtonFormField<String>(
                      value: sexo,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style:
                          const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      onChanged: (String? value) {
                        setState(() {
                          sexo = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList()),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Sueldo Base:'),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: controllerSueldoBase,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
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
                const Text('Comision:'),
                const SizedBox(width: 27),
                Expanded(
                  child: TextField(
                    controller: controllerComision,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
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
                const Text('Deuda:'),
                const SizedBox(width: 47),
                Expanded(
                  child: TextField(
                    controller: controllerDeuda,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
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
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pantalla02(
                        cedula: controllerCedula.text,
                        nombre: controllerName.text,
                        sueldoNeto: controllerSueldoNeto.text,
                      ),
                    ));
              },
              child: const Text('Imprimir'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                child: const Text('Salir'))
          ],
        ),
      ),
    );
  }
}
