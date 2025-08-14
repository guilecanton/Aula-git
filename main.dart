import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("ola", style: TextStyle(color: Colors.amberAccent)),
        ),
        body: BodyExemplo(),
      ),
    );
  }
}

class BodyExemplo extends StatelessWidget {
  const BodyExemplo({super.key});

  void _mensagemAlerta(BuildContext buildContext, String textoAlerta) {
    // showDialog(context: buildContext, builder: (BuildContext context){
    //   return AlertDialog()
    // })
    showDialog(
      context: buildContext,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("ola"),
          content: Text(textoAlerta),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(buildContext).pop();
              },
              child: Text('cancelar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _mensagemAlerta(context, "olá mundo");
          },
          child: Text("oi"),
        ),
      ],
    ));
  }
}
