import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageModal extends StatefulWidget {
  @override
  _ImageModalState createState() => _ImageModalState();
}

class _ImageModalState extends State<ImageModal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
              //bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 300,
                      height: 500,
                      child: Image.asset(
                        'assets/images/meals/print1.png',
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 500,
                      child: Image.asset(
                        'assets/images/meals/print5.png',
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 500,
                      child: Image.asset(
                        'assets/images/meals/print3.png',
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 500,
                      child: Image.asset(
                        'assets/images/meals/print4.png',
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () async {
                      await launch('https://github.com/WSixx/Meals-App');
                      Navigator.pop(context);
                    },
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Icon(
                          FontAwesomeIcons.github,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'GitHub',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(Icons.close),
            mini: true,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
