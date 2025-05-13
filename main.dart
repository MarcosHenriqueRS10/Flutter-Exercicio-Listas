import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';
    List<Contato> contatos = [
  Contato("Marcos","marcos@gmail.com"),
  Contato("vini","vini@gmail.com"),
  Contato("rafa","rafa@gmail.com"),
  Contato("guilherme","guilherme@gmail.com"),
  Contato("badu","badu@gmail.com"),
];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount:contatos.length,
          itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 3, 26, 228),
              child: Text('${contatos[index].nomeCompleto?[0].toUpperCase()}', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
            ),
            title: Text('${contatos[index].nomeCompleto}'),
            subtitle: Text('${contatos[index].email}') ,
          );
           }, 
        ),      ),
    );
  }
}

class Contato {
  String? nomeCompleto;
  String? email;
  Contato(this.nomeCompleto,this.email){}



}
 
 
