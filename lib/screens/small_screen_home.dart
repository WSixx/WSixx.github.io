import 'package:animated_widgets/widgets/rotation_animated.dart';
import 'package:animated_widgets/widgets/shake_animated_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SmallScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Lucas Gonçalves Portifolio'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: Image.network(
                    'https://avatars.githubusercontent.com/u/54176892?s=460&u=4b0b4625a64dec5178064bb8ce62f95ea89d664e&v=4',
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Lucas Silva Goncalves',
                  textScaleFactor: 3,
                  style: TextStyle(
                    fontFamily: 'stjedise',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 1,
                child: SelectableText.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Hello, I am passionate about technology, currently studying the 5th semester of Computer Science, I am looking for an opportunity. '
                            'I like to learn and I am fascinated by new technologies, programming for me has become a hobby that I love to spend time.'
                            ' I like to read and watch a wide variety of films.',
                        style: Theme.of(context).textTheme.caption.copyWith(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: () async {
                        await launch(
                            'https://www.linkedin.com/in/lucassgon%C3%A7alves/');
                      },
                      child: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.blue[800],
                        size: MediaQuery.of(context).size.aspectRatio * 80,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: () async {
                        await launch('https://github.com/WSixx');
                      },
                      child: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.aspectRatio * 80,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Tooltip(
                      message: 'Curriculo',
                      child: InkWell(
                        onTap: () async {
                          await launch(
                              'https://drive.google.com/drive/folders/1zdxe0cn_rP8UebGqyTpWqVsAcadwcdNZ?usp=sharing');
                        },
                        child: Icon(
                          FontAwesomeIcons.solidFileWord,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.aspectRatio * 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GridView.count(
                crossAxisCount: 3,
                children: [
                  ListTile(
                    title: Card(
                      child: Text('PRJ 1'),
                    ),
                  ),
                  ListTile(
                    title: Card(
                      child: Text('PRJ 1'),
                    ),
                  ),
                  ListTile(
                    title: Card(
                      child: Text('PRJ 1'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
