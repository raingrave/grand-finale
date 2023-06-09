import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:grand_finale/cadastro_usuario.dart';
import 'package:grand_finale/dashboard.dart';

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
  String _email = "";
  String _password = "";

  final dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png'),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Digite seu email",
                    prefixIcon: Icon(Icons.email, color: Colors.white),
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
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                  ),
                ),
              ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () async {
              try {
                final response = await dio.post('https://192.168.15.7:3000/auth/login', data: {
                  'email': 'lisi@gmail.com',
                  'password': 123
                });

                if (response.data.isLogged) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DashboardScreen())
                  );
                }

              } catch(exception) {
                print(exception);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DashboardScreen())
                );
              }

            },
            child: Text('Entrar'),
          ),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(

                onPressed: () {
                  print(this);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RegistrationScreen())
                  );
                },
                child: Text('Cadastrar'),
              ),
          )

          ],
        )// This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}