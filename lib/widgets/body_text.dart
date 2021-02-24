import 'dart:html';
import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  const BodyText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Text(
            'olá, sou Lucas Gonçalves!',
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'stjedise',
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Sobre Mim:',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: 'stjedise',
                fontSize: 30,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width * 0.5,
            child: SelectableText.rich(
              //'Estudante de Ciências da Computação - 5/8',
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Olá, sou um apaixonado por técnologia, em busca de uma oportunidade. '
                        'Gosto de aprender e sou fascinado por novas tecnologias, programar para mim virou um hobby que adoro para passar o tempo.'
                        ' Gosto de ler e assistir filme dos mais diversos.',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
              /*style: TextStyle(
                color: Colors.blue,
                fontFamily: 'stjedise',
                fontSize: 26,
              ),*/
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Alguns Projetos:',
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'stjedise',
              fontSize: 26,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
