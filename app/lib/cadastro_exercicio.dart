import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Exercício',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: RegistrationScreenExercise(),
    );
  }
}

class RegistrationScreenExercise extends StatefulWidget {
  @override
  _RegistrationScreenExerciseState createState() => _RegistrationScreenExerciseState();
}

class _RegistrationScreenExerciseState extends State<RegistrationScreenExercise> {
  TextEditingController _nomeExercicioController = TextEditingController();
  TextEditingController _tipoExercicioController = TextEditingController();
  TextEditingController _statusExercicioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Exercício'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nomeExercicioController,
              decoration: InputDecoration(
                labelText: 'Nome do exercício',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _tipoExercicioController,
              decoration: InputDecoration(
                labelText: 'Tipo do exercício',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _statusExercicioController,
              decoration: InputDecoration(
                labelText: 'Status do exercício',
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Exercício cadastrado com sucesso'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                ),
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}