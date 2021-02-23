import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageModal extends StatefulWidget {
  final String print1;
  final String print2;
  final String print3;
  final String print4;
  final String linkGit;

  const ImageModal({
    Key key,
    this.print1,
    this.print2,
    this.print3,
    this.print4,
    this.linkGit,
  }) : super(key: key);

  @override
  _ImageModalState createState() => _ImageModalState();
}

class _ImageModalState extends State<ImageModal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 60.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
              bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
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
                        widget.print1,
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 500,
                      child: Image.asset(
                        widget.print2,
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 500,
                      child: Image.asset(
                        widget.print3,
                      ),
                    ),
                    widget.print4.isNotEmpty
                        ? Container(
                            width: 300,
                            height: 500,
                            child: Image.asset(
                              widget.print4,
                            ),
                          )
                        : Container(),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () async {
                      await launch(widget.linkGit);
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
