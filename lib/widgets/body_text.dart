import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1380, 720),
      builder: () => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Center(
                child: Text(
                  'Hi, i am Lucas Gonçalves!',
                  textScaleFactor: 1.2,
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
              width: MediaQuery.of(context).size.width * 0.6,
              child: Center(
                child: Text(
                  'About Me:',
                  textScaleFactor: 1.2,
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
                          'Hello, I am passionate about technology, currently studying the 5th semester of Computer Science, I am looking for an opportunity. '
                          'I like to learn and I am fascinated by new technologies, programming for me has become a hobby that I love to spend time.'
                          ' I like to read and watch a wide variety of films.',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.white, fontSize: 32.ssp),
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
              textScaleFactor: 1.5,
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
