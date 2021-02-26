import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1280, 720),
      allowFontScaling: true,
      builder: () => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Center(
                child: Text(
                  'olá, sou Lucas Gonçalves!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'stjedise',
                    fontSize: 37.ssp,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Center(
                child: Text(
                  'Sobre Mim:',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'stjedise',
                    fontSize: 32.ssp,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width * 0.6,
              child: SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Olá, sou um apaixonado por técnologia, atualmente cursando o 5° semestre de Ciência da Computação, estou em busca de uma oportunidade. '
                          'Gosto de aprender e sou fascinado por novas tecnologias, programar para mim virou um hobby que adoro para passar o tempo.'
                          ' Gosto de ler e assistir filme dos mais diversos.',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.white, fontSize: 28.ssp),
                    ),
                  ],
                ),
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
                fontSize: 32.ssp,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
