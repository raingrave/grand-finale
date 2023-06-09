import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  // Dados simulados dos exercícios
  final List<Map<String, String>> exercises = [
    {
      'name': 'Exercício 1',
      'type': 'Corrida',
      'status': 'Concluído',
    },
    {
      'name': 'Exercício 2',
      'type': 'Caminhada',
      'status': 'Em andamento',
    },
    {
      'name': 'Exercício 3',
      'type': 'Ciclismo',
      'status': 'Pendente',
    },
    {
      'name': 'Exercício 4',
      'type': 'Musculação',
      'status': 'Concluído',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          final exercise = exercises[index];
          return ListTile(
            title: Text(exercise['name']!),
            subtitle: Text(exercise['type']!),
            trailing: Text(
              exercise['status']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _getStatusColor(exercise['status']!),
              ),
            ),
          );
        },
      ),
    );
  }

  // Função auxiliar para definir a cor com base no status do exercício
  Color _getStatusColor(String status) {
    if (status == 'Concluído') {
      return Colors.green;
    } else if (status == 'Em andamento') {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  }
}