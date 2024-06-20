// usar < flutter pub get > para cargar los paquetes

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isCheckedTra = false;
  bool _isCheckedTraa = false;
  String _sexo = "";
  bool onOff = false;
  double _valorSlider = 2.5;
  final TextEditingController controllerName = TextEditingController(text: '');
  final TextEditingController controllerDate = TextEditingController(text: '');
  final TextEditingController controllerTime = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: Text(widget.title),
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                const Text(
                  'Formulario de Captura de datos',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                const Text('Nombre'),
                // Name
                TextField(
                  controller: controllerName,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal,
                    ),
                    prefixIcon: const Icon(Icons.edit),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        controllerName.text = '';
                      },
                    ),
                    contentPadding: const EdgeInsets.all(20),
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    hintText: 'Nombre: ',
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isCheckedTra,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedTra = value!;
                        });
                      },
                    ),
                    const Text('Trabaja'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isCheckedTraa,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedTraa = value!;
                        });
                      },
                    ),
                    const Text('Estudia'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 'Femenino',
                        groupValue: _sexo,
                        onChanged: (String? value) {
                          setState(() {
                            _sexo = value!;
                          });
                        }),
                    const Text('Femenino'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 'Masculino',
                        groupValue: _sexo,
                        onChanged: (String? value) {
                          setState(() {
                            _sexo = value!;
                          });
                        }),
                    const Text('Masculino'),
                  ],
                ),
                Row(
                  children: [
                    const Text("Activar notificación"),
                    Switch(
                      value: onOff,
                      activeColor: const Color.fromARGB(255, 253, 0, 0),
                      onChanged: (bool value) {
                        setState(() {
                          onOff = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text("Seleccione Precio Estimado"),
                ),
                //price
                Center(
                  child: Slider(
                    thumbColor: const Color.fromARGB(255, 255, 0, 0),
                    value: _valorSlider,
                    max: 100,
                    divisions: 3,
                    label: _valorSlider.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _valorSlider = value;
                      });
                    },
                  ),
                ),

                // Date
                TextField(
                    controller: controllerDate,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.calendar_today),
                        labelText: 'Introduzca la Fecha'),
                    readOnly: true,
                    onTap: () async {
                      // ignore: unnecessary_null_comparison
                      if (controllerDate != null) {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(DateTime.now().year - 100),
                                lastDate: DateTime(DateTime.now().year + 1))
                            .then(
                          (value) {
                            setState(() {
                              controllerDate.text =
                                  '${value!.day.toString()}/${value.month.toString()}/${value.year.toString()}';
                            });
                          },
                        );
                      } else {
                        // ignore: avoid_print
                        print('Date is not is selected');
                      }
                    }),

                const SizedBox(
                  height: 20,
                ),

                //Date Botton
                ElevatedButton(
                  onPressed: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(DateTime.now().year - 100),
                            lastDate: DateTime(DateTime.now().year + 1))
                        .then(
                      (value) {
                        controllerDate.text =
                            '${value!.day.toString()}/${value.month.toString()}/${value.year.toString()}';
                      },
                    );
                  },
                  child: const Text(
                    'Fecha',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // Time
                TextField(
                  controller: controllerTime,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.history_toggle_off_rounded),
                      labelText: 'Introduzca la Hora'),
                ),

                const SizedBox(
                  height: 20,
                ),

                //Time Botton
                ElevatedButton(
                  onPressed: () {
                    showTimePicker(
                            context: context, initialTime: TimeOfDay.now())
                        .then(
                      (value) {
                        controllerTime.text = value!.format(context);
                      },
                    );
                  },
                  child: const Text(
                    'Hora',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
