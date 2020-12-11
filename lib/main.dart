import 'package:flutter/material.dart';

main() => runApp(HelloWorld());

class HelloWorld extends StatelessWidget {

  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
      print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
     'Qual é sua cor favorita?',  //Representa a pergunta 1
      'E qual é seu animal favorito?' //Representa a pergunta 2
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(children: <Widget> [
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ])),
    );
  }
}
