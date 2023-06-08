import 'package:flutter/material.dart';
import 'package:grand_finale/cadastro_usuario.dart';

void main() {
  runApp(const Fidelio());
}

class Fidelio extends StatelessWidget {
  const Fidelio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fidelio",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black, background: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Fidelio'),
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
  int _counter = 0;
  String _email = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png'),
              Text(
                  '$_email'
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Digite seu email",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Entrar'),
          ),
          ElevatedButton(
            onPressed: () {
              print(this);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => RegistrationScreen())
              );
            },
            child: Text('Cadastrar'),
          ),
          ],
        )// This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}