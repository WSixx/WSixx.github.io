import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portifolio/widgets/background_bubble.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 1,
        color: Colors.transparent,
        child: BackgroundBubble(
          child: Column(
            children: [
              Text(
                'Formação:',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'stjedise',
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  children: [
                    const Icon(
                      Icons.computer,
                      color: Colors.white,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SelectableText(
                      'Ciência da Computação (2019 - 12/2022) -  Unip',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  children: [
                    const Icon(
                      Icons.computer,
                      color: Colors.white,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SelectableText(
                      'Técnico em Informática (2014) - ETEC Aristóteles Ferreira',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
              const Text(
                'Contato:',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'stjedise',
                  fontSize: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SelectableText(
                          'lucas.2007s@gmail.com',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: Colors.white, fontSize: 25),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SelectableText(
                          'lucas.goncalves35@aluno.unip.br',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: Colors.white, fontSize: 25),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
