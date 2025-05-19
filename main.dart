import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Contacts';
    List<Contato> contatos = [
      Contato("Alma Christensen", "alma.christensen@example.com"),
      Contato("Sergio Hill", "sergio.hill@example.com"),
      Contato("Malo Gonzalez", "malo.gonzalez@example.com"),
      Contato("Miguel Owens", "miguel.owens@example.com"),
      Contato("Lilou Dumont", "lilou.dumont@example.com"),
      Contato("Ashley Stewart", "ashley.stewart@example.com"),
      Contato("Roman Zhang", "roman.zhang@example.com"),
    ];

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          titleMedium: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  contatos[index].nomeCompleto![0].toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                contatos[index].nomeCompleto!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(contatos[index].email!),
            );
          },
        ),
      ),
    );
  }
}

class Contato {
  String? nomeCompleto;
  String? email;

  Contato(this.nomeCompleto, this.email);
}
