import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home() ,
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frase = "Clique no Botão para ler seu Biscoito";
  void _pegar_biscoito () {
    var frases = [
      "A vida trará coisas boas se tiveres paciência.",
      "Demonstre amor e alegria em todas as oportunidades "
          "e verás que a paz nasce dentro de você.",
      "Não compense na ira o que lhe falta na razão.",
      "Defeitos e virtudes são apenas dois lados da mesma moeda.",
      "A maior de todas as torres começa no solo.",
      "Não há que ser forte. Há que ser flexível.",
      "Gente todo dia arruma os cabelos, por que não o coração?",
      "Há três coisas que jamais voltam; a flecha lançada, a palavra "
          "dita e a oportunidade perdida.",
      "A juventude não é uma época da vida, é um estado de espírito.",
      "Podemos escolher o que semear, mas somos obrigados a colher"
          " o que plantamos",
      "Dê toda a atenção para a formação dos teus filhos, sobretudo "
          "por exemplos de tua própria vida.",
      "Siga os bons e aprenda com eles.",
      "Não importa o tamanho da montanha, ela não pode tapar o sol.",
      "O bom-senso vai mais longe do que muito conhecimento.",
      "Quem quer colher rosas deve suportar os espinhos.",
      "São os nossos amigos que nos ensinam as mais valiosas lições.",
      "Uma iniciativa mal-sucedida não significa o final de "
          "tudo. Sempre existe uma nova oportunidade.",
      "quele que se importa com o sentimento dos outros, não é um tolo.",
      "A adversidade é um espelho que reflete o verdadeiro eu.",
      "Lamentar aquilo que não temos é desperdiçar aquilo que já possuímos.",
      "Uma bela flor é incompleta sem suas folhas.",
      "O riso é a menor distância entre duas pessoas.",
      "Amizade e Amor são coisas que podem virar uma só num piscar de olhos.",
      "A sorte favorece a mente bem preparada.",
      "Sua visão se tornará clara apenas quando você puder olhar dentro"
          " de seu coração.",
       "As pessoas se esquecerão do que você disse"
           " e do que você fez… mas nunca se esquecerão de como você "
           "as fez sentir.",
        "Todas as coisas são difíceis antes de se tornarem fáceis.",
        "Se você se sente só é porque construiu muros ao invés de pontes.",
        "Você é do tamanho do seu sonho.",
      "Pare de procurar eternamente; a felicidade está bem ao seu lado.",
      "A maior barreira para o sucesso é o medo do fracasso.",
      "O pessimista vê a "
          "dificuldade em cada oportunidade;"
          " O otimista vê a oportunidade em cada dificuldade.",
          "O insucesso é apenas "
              "uma oportunidade para recomeçar de "
              "novo com mais inteligência.",
      "O futuro pertence àqueles que acreditam na beleza de seus sonhos.",




    ];
   final random = new Random();
   int index = random.nextInt(frases.length);
   setState(() {
     _frase = frases[index];
   });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biscoito da sorte"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           Image.asset('images/logo.png', height: 150,),
            Text(_frase, style:  TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 33
            ),
              textAlign: TextAlign.justify,
            ),
            RaisedButton(
              onPressed: _pegar_biscoito,
              color: Colors.orangeAccent,
              child: Text("Pegar seu Biscoito", style: TextStyle(
                color: Colors.white,
                fontSize: 25
              ),),
            )
          ],
        ),
      ),
    );
  }
}


