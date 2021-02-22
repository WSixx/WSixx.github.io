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
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('A SnackBar has been shown.'),
                ),
              );
            },
            child: const Text(
              'Lucas Gonçalves!',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: 'stjedise',
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Estudante de Ciências da Computação - 5/8',
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'stjedise',
              fontSize: 26,
            ),
          ),
          const SizedBox(
            height: 30,
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
