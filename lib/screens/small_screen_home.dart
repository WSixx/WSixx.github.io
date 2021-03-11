import 'package:flutter/material.dart';

class SmallScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Center(
                  child: Text(
                    'Hi, i am Lucas Gonçalves!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'stjedise',
                      fontSize: 34,
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
                    'About Me:',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'stjedise',
                      fontSize: 32,
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
                            'Hello, I am passionate about technology, currently studying the 5th semester of Computer Science, I am looking for an opportunity. '
                            'I like to learn and I am fascinated by new technologies, programming for me has become a hobby that I love to spend time.'
                            ' I like to read and watch a wide variety of films.',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Colors.white,
                              fontSize: 28,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Some of my Projects:',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'stjedise',
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
